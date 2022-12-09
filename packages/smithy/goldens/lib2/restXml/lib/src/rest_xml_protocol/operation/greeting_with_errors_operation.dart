// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v2.rest_xml_protocol.operation.greeting_with_errors_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_xml_v2/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/complex_error.dart'
    as _i7;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/greeting_with_errors_output.dart'
    as _i2;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/invalid_greeting.dart'
    as _i8;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A BadRequest error. Implementations must be able to successfully take a response and properly (de)serialize successful and error responses based on the the presence of the
class GreetingWithErrorsOperation extends _i1.HttpOperation<_i1.Unit, _i1.Unit,
    _i2.GreetingWithErrorsOutputPayload, _i2.GreetingWithErrorsOutput> {
  /// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A BadRequest error. Implementations must be able to successfully take a response and properly (de)serialize successful and error responses based on the the presence of the
  GreetingWithErrorsOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i2.GreetingWithErrorsOutputPayload,
          _i2.GreetingWithErrorsOutput>> protocols = [
    _i3.RestXmlProtocol(
      serializers: _i4.serializers,
      builderFactories: _i4.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i3.WithSdkInvocationId(),
        const _i3.WithSdkRequest(),
      ],
      responseInterceptors: [],
      noErrorWrapping: false,
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = _i5.endpointResolver.resolve(
    _i5.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = r'/GreetingWithErrors';
      });
  @override
  int successCode([_i2.GreetingWithErrorsOutput? output]) => 200;
  @override
  _i2.GreetingWithErrorsOutput buildOutput(
    _i2.GreetingWithErrorsOutputPayload payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      _i2.GreetingWithErrorsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.restxml',
            shape: 'ComplexError',
          ),
          _i1.ErrorKind.client,
          _i7.ComplexError,
          statusCode: 403,
          builder: _i7.ComplexError.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'aws.protocoltests.restxml',
            shape: 'InvalidGreeting',
          ),
          _i1.ErrorKind.client,
          _i8.InvalidGreeting,
          statusCode: 400,
          builder: _i8.InvalidGreeting.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GreetingWithErrors';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i2.GreetingWithErrorsOutput> run(
    _i1.Unit input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i9.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)}
      },
    );
  }
}