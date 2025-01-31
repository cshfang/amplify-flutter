// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.operation.put_config_rule_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i13;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_permissions_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_config_rules_exceeded_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_configuration_recorder_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/put_config_rule_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_in_use_exception.dart'
    as _i12;

/// Adds or updates an Config rule to evaluate if your Amazon Web Services resources comply with your desired configurations. For information on how many Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
///
/// There are two types of rules: Config Custom Rules and Config Managed Rules. You can use `PutConfigRule` to create both Config custom rules and Config managed rules.
///
/// Custom rules are rules that you can create using either Guard or Lambda functions. Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)) is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. Lambda uses custom code that you upload to evaluate a custom rule. If you are adding a new Custom Lambda rule, you first need to create an Lambda function that the rule invokes to evaluate your resources. When you use `PutConfigRule` to add a Custom Lambda rule to Config, you must specify the Amazon Resource Name (ARN) that Lambda assigns to the function. You specify the ARN in the `SourceIdentifier` key. This key is part of the `Source` object, which is part of the `ConfigRule` object.
///
/// Managed rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html). If you are adding an Config managed rule, you must specify the rule's identifier for the `SourceIdentifier` key.
///
/// For any new rule that you add, specify the `ConfigRuleName` in the `ConfigRule` object. Do not specify the `ConfigRuleArn` or the `ConfigRuleId`. These values are generated by Config for new rules.
///
/// If you are updating a rule that you added previously, you can specify the rule by `ConfigRuleName`, `ConfigRuleId`, or `ConfigRuleArn` in the `ConfigRule` data type that you use in this request.
///
/// For more information about developing and using Config rules, see [Evaluating Amazon Web Services resource Configurations with Config](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the _Config Developer Guide_.
class PutConfigRuleOperation extends _i1.HttpOperation<_i2.PutConfigRuleRequest,
    _i2.PutConfigRuleRequest, _i1.Unit, _i1.Unit> {
  /// Adds or updates an Config rule to evaluate if your Amazon Web Services resources comply with your desired configurations. For information on how many Config rules you can have per account, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  ///
  /// There are two types of rules: Config Custom Rules and Config Managed Rules. You can use `PutConfigRule` to create both Config custom rules and Config managed rules.
  ///
  /// Custom rules are rules that you can create using either Guard or Lambda functions. Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)) is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. Lambda uses custom code that you upload to evaluate a custom rule. If you are adding a new Custom Lambda rule, you first need to create an Lambda function that the rule invokes to evaluate your resources. When you use `PutConfigRule` to add a Custom Lambda rule to Config, you must specify the Amazon Resource Name (ARN) that Lambda assigns to the function. You specify the ARN in the `SourceIdentifier` key. This key is part of the `Source` object, which is part of the `ConfigRule` object.
  ///
  /// Managed rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html). If you are adding an Config managed rule, you must specify the rule's identifier for the `SourceIdentifier` key.
  ///
  /// For any new rule that you add, specify the `ConfigRuleName` in the `ConfigRule` object. Do not specify the `ConfigRuleArn` or the `ConfigRuleId`. These values are generated by Config for new rules.
  ///
  /// If you are updating a rule that you added previously, you can specify the rule by `ConfigRuleName`, `ConfigRuleId`, or `ConfigRuleArn` in the `ConfigRule` data type that you use in this request.
  ///
  /// For more information about developing and using Config rules, see [Evaluating Amazon Web Services resource Configurations with Config](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the _Config Developer Guide_.
  PutConfigRuleOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.PutConfigRuleRequest, _i2.PutConfigRuleRequest,
          _i1.Unit, _i1.Unit>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.PutConfigRule',
            ),
            _i4.WithSigV4(
              region: _region,
              service: _i6.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.PutConfigRuleRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InsufficientPermissionsException',
          ),
          _i1.ErrorKind.client,
          _i8.InsufficientPermissionsException,
          builder: _i8.InsufficientPermissionsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidParameterValueException',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidParameterValueException,
          builder: _i9.InvalidParameterValueException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'MaxNumberOfConfigRulesExceededException',
          ),
          _i1.ErrorKind.client,
          _i10.MaxNumberOfConfigRulesExceededException,
          builder: _i10.MaxNumberOfConfigRulesExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoAvailableConfigurationRecorderException',
          ),
          _i1.ErrorKind.client,
          _i11.NoAvailableConfigurationRecorderException,
          builder: _i11.NoAvailableConfigurationRecorderException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ResourceInUseException',
          ),
          _i1.ErrorKind.client,
          _i12.ResourceInUseException,
          builder: _i12.ResourceInUseException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutConfigRule';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.PutConfigRuleRequest input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i13.runZoned(
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
