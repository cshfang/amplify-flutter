// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class GraphQLApiView extends StatefulWidget {
  const GraphQLApiView({super.key, this.isAmplifyConfigured = false});
  final bool isAmplifyConfigured;

  @override
  State<GraphQLApiView> createState() => _GraphQLApiViewState();
}

class _GraphQLApiViewState extends State<GraphQLApiView> {
  String _result = '';
  StreamSubscription<GraphQLResponse<String>>? _subscription;
  void Function()? _unsubscribe;
  GraphQLOperation<String>? _lastOperation;

  final subscriptionReq = GraphQLRequest<String>(
    document: '''subscription MySubscription {
    onCreateBlog {
      id
      name
      createdAt
    }
  }''',
  );

  Future<void> subscribe() async {
    if (_subscription != null) {
      return;
    }

    final operation = Amplify.API.subscribe(
      subscriptionReq,
      onEstablished: () => print('Subscription established'),
    );

    final streamSubscription = operation.listen(
      (event) {
        if (event.hasErrors) {
          print('Error(s) received from subscription: ${event.errors}');
          return;
        }
        final data = 'Subscription event data received: ${event.data}';
        print(data);
        setState(() {
          _result = data;
        });
      },
      onError: (Object error) => print(
        'Error in GraphQL subscription: $error',
      ),
    );
    setState(() {
      _subscription = streamSubscription;
      _unsubscribe = streamSubscription.cancel;
    });
  }

  Future<void> query() async {
    const graphQLDocument = '''query MyQuery {
      listBlogs {
        items {
          id
          name
          createdAt
        }
      }
    }''';

    final operation = Amplify.API
        .query<String>(request: GraphQLRequest(document: graphQLDocument));
    _lastOperation = operation;

    final response = await operation.response;
    final data = response.data;
    if (data == null) {
      print('errors: ${response.errors}');
      return;
    }

    print('Result data: $data');
    setState(() {
      _result = data;
    });
  }

  Future<void> mutate() async {
    const graphQLDocument = r'''mutation MyMutation($name: String!) {
      createBlog(input: {name: $name}) {
        id
        name
        createdAt
      }
    }''';

    final operation = Amplify.API.mutate(
      request: GraphQLRequest<String>(
        document: graphQLDocument,
        variables: <String, dynamic>{'name': 'Test App Blog'},
        authorizationMode: APIAuthorizationType.userPools,
      ),
    );
    _lastOperation = operation;

    final response = await operation.response;
    final data = response.data;
    if (data == null) {
      print('errors: ${response.errors}');
      return;
    }

    print('Result data: $data');
    setState(() {
      _result = data;
    });
  }

  void onCancelPressed() async {
    try {
      await _lastOperation?.cancel();
    } on Exception catch (e) {
      print('Cancel FAILED');
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(5),
      children: <Widget>[
        const Padding(padding: EdgeInsets.all(10)),
        Center(
          child: ElevatedButton(
            onPressed: widget.isAmplifyConfigured ? query : null,
            child: const Text('Run Query'),
          ),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        Center(
          child: ElevatedButton(
            onPressed: widget.isAmplifyConfigured ? mutate : null,
            child: const Text('Run Mutation'),
          ),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        Center(
          child: ElevatedButton(
            onPressed: widget.isAmplifyConfigured && _subscription == null
                ? subscribe
                : null,
            child: const Text('Subscribe'),
          ),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        Center(
          child: ElevatedButton(
            onPressed: _subscription != null
                ? () => setState(() {
                      _unsubscribe?.call();
                      _unsubscribe = null;
                      _subscription = null;
                    })
                : null,
            child: const Text('Unsubscribe'),
          ),
        ),
        const Padding(padding: EdgeInsets.all(5)),
        Center(
          child: ElevatedButton(
            onPressed: _lastOperation != null &&
                    _lastOperation!.operation.isCompleted &&
                    _lastOperation!.operation.isCanceled
                ? onCancelPressed
                : null,
            child: const Text('Cancel Operation'),
          ),
        ),
        Text('Result: \n$_result\n'),
      ],
    );
  }
}
