// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_json1_1_v2.machine_learning.model.limit_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'limit_exceeded_exception.g.dart';

abstract class LimitExceededException
    with _i1.AWSEquatable<LimitExceededException>
    implements
        Built<LimitExceededException, LimitExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  factory LimitExceededException({
    int? code,
    String? message,
  }) {
    return _$LimitExceededException._(
      code: code,
      message: message,
    );
  }

  factory LimitExceededException.build(
          [void Function(LimitExceededExceptionBuilder) updates]) =
      _$LimitExceededException;

  const LimitExceededException._();

  /// Constructs a [LimitExceededException] from a [payload] and [response].
  factory LimitExceededException.fromResponse(
    LimitExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    LimitExceededExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LimitExceededExceptionBuilder b) {}
  int? get code;
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.machinelearning',
        shape: 'LimitExceededException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 417;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LimitExceededException');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class LimitExceededExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<LimitExceededException> {
  const LimitExceededExceptionAwsJson11Serializer()
      : super('LimitExceededException');

  @override
  Iterable<Type> get types => const [
        LimitExceededException,
        _$LimitExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  LimitExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LimitExceededExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as LimitExceededException);
    final result = <Object?>[];
    if (payload.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
