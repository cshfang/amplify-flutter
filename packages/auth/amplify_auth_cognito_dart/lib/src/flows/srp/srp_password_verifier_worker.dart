// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_helper.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_result.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_password_verifier_worker.worker.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:intl/intl.dart';
import 'package:worker_bee/worker_bee.dart';

part 'srp_password_verifier_worker.g.dart';

/// {@template amplify_auth_cognito.srp_password_verifier_message}
/// Required parameters for the [SrpPasswordVerifierWorker].
/// {@endtemplate}
@BuiltValue(nestedBuilders: false)
abstract class SrpPasswordVerifierMessage
    implements
        Built<SrpPasswordVerifierMessage, SrpPasswordVerifierMessageBuilder> {
  /// {@macro amplify_auth_cognito.srp_password_verifier_message}
  factory SrpPasswordVerifierMessage([
    void Function(SrpPasswordVerifierMessageBuilder) updates,
  ]) = _$SrpPasswordVerifierMessage;
  SrpPasswordVerifierMessage._();

  @BuiltValueHook(finalizeBuilder: true)
  static void _init(SrpPasswordVerifierMessageBuilder b) {
    b.timestamp ??= DateTime.now().toUtc();
  }

  /// Result of the SRP initialization step.
  SrpInitResult get initResult;

  /// User pool client ID.
  String get clientId;

  /// User pool client secret, if any.
  String? get clientSecret;

  /// User pool ID.
  String get poolId;

  /// User device key, if any.
  String? get deviceKey;

  /// Parameters to the SRP flow.
  SignInParameters get parameters;

  /// Parameters of the current challenge.
  BuiltMap<String, String> get challengeParameters;

  /// The timestamp of the request.
  DateTime get timestamp;

  /// The [SrpPasswordVerifierMessage] serializer.
  static Serializer<SrpPasswordVerifierMessage> get serializer =>
      _$srpPasswordVerifierMessageSerializer;
}

/// {@template amplify_auth_cognito.srp_password_verifier_worker}
/// Worker bee for handling the SRP password verifier challenge routine.
/// {@endtemplate}
@WorkerBee('lib/src/workers/workers.dart')
abstract class SrpPasswordVerifierWorker extends WorkerBeeBase<
    SrpPasswordVerifierMessage, RespondToAuthChallengeRequest> {
  /// {@macro amplify_auth_cognito.srp_password_verifier_worker}
  SrpPasswordVerifierWorker() : super(serializers: serializers);

  /// {@macro amplify_auth_cognito.srp_password_verifier_worker}
  factory SrpPasswordVerifierWorker.create() = SrpPasswordVerifierWorkerImpl;

  static final _dateFormat = DateFormat("EEE MMM d HH:mm:ss 'UTC' yyyy");

  @override
  Future<RespondToAuthChallengeRequest?> run(
    Stream<SrpPasswordVerifierMessage> listen,
    StreamSink<RespondToAuthChallengeRequest> respond,
  ) async {
    await for (final message in listen) {
      final username =
          message.challengeParameters[CognitoConstants.challengeParamUsername]!;
      final userId = message
          .challengeParameters[CognitoConstants.challengeParamUserIdForSrp]!;
      // Pool ID is in the form `{region}_{poolName}`
      final poolName = message.poolId.split('_')[1];
      final secretBlock = message
          .challengeParameters[CognitoConstants.challengeParamSecretBlock]!;
      final encodedSalt =
          message.challengeParameters[CognitoConstants.challengeParamSalt]!;
      final encodedB =
          message.challengeParameters[CognitoConstants.challengeParamSrpB]!;
      final timestamp = message.timestamp;
      final formattedTimestamp = _dateFormat.format(timestamp);

      final encodedClaim = SrpHelper.createPasswordClaim(
        userId: userId,
        parameters: message.parameters,
        initResult: message.initResult,
        encodedSalt: encodedSalt,
        encodedB: encodedB,
        poolName: poolName,
        secretBlock: secretBlock,
        formattedTimestamp: formattedTimestamp,
      );
      final response = RespondToAuthChallengeRequest.build((b) {
        b
          ..clientId = message.clientId
          ..challengeName = ChallengeNameType.passwordVerifier
          ..challengeResponses.addAll({
            CognitoConstants.challengeParamPasswordSecretBlock: secretBlock,
            CognitoConstants.challengeParamPasswordSignature: encodedClaim,
            CognitoConstants.challengeParamUsername: username,
            CognitoConstants.challengeParamTimestamp: formattedTimestamp,
          });

        if (message.clientSecret != null) {
          b.challengeResponses[CognitoConstants.challengeParamSecretHash] =
              computeSecretHash(
            username,
            message.clientId,
            message.clientSecret!,
          );
        }

        final deviceKey = message.deviceKey;
        if (deviceKey != null) {
          b.challengeResponses[CognitoConstants.challengeParamDeviceKey] =
              deviceKey;
        }
      });

      respond.add(response);
    }
    return null;
  }
}

/// Serializers for the [SrpPasswordVerifierWorker] worker.
@SerializersFor([
  SrpPasswordVerifierMessage,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addAll(const [
        ...RespondToAuthChallengeRequest.serializers,
        ...AnalyticsMetadataType.serializers,
        ...ChallengeNameType.serializers,
        ...UserContextDataType.serializers,
      ]))
    .build();
