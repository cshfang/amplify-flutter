// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_replication_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketReplicationRequest extends GetBucketReplicationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketReplicationRequest(
          [void Function(GetBucketReplicationRequestBuilder)? updates]) =>
      (new GetBucketReplicationRequestBuilder()..update(updates))._build();

  _$GetBucketReplicationRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketReplicationRequest', 'bucket');
  }

  @override
  GetBucketReplicationRequest rebuild(
          void Function(GetBucketReplicationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketReplicationRequestBuilder toBuilder() =>
      new GetBucketReplicationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketReplicationRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class GetBucketReplicationRequestBuilder
    implements
        Builder<GetBucketReplicationRequest,
            GetBucketReplicationRequestBuilder> {
  _$GetBucketReplicationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketReplicationRequestBuilder() {
    GetBucketReplicationRequest._init(this);
  }

  GetBucketReplicationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketReplicationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketReplicationRequest;
  }

  @override
  void update(void Function(GetBucketReplicationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketReplicationRequest build() => _build();

  _$GetBucketReplicationRequest _build() {
    final _$result = _$v ??
        new _$GetBucketReplicationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketReplicationRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketReplicationRequestPayload
    extends GetBucketReplicationRequestPayload {
  factory _$GetBucketReplicationRequestPayload(
          [void Function(GetBucketReplicationRequestPayloadBuilder)?
              updates]) =>
      (new GetBucketReplicationRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetBucketReplicationRequestPayload._() : super._();

  @override
  GetBucketReplicationRequestPayload rebuild(
          void Function(GetBucketReplicationRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketReplicationRequestPayloadBuilder toBuilder() =>
      new GetBucketReplicationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketReplicationRequestPayload;
  }

  @override
  int get hashCode {
    return 588156569;
  }
}

class GetBucketReplicationRequestPayloadBuilder
    implements
        Builder<GetBucketReplicationRequestPayload,
            GetBucketReplicationRequestPayloadBuilder> {
  _$GetBucketReplicationRequestPayload? _$v;

  GetBucketReplicationRequestPayloadBuilder() {
    GetBucketReplicationRequestPayload._init(this);
  }

  @override
  void replace(GetBucketReplicationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketReplicationRequestPayload;
  }

  @override
  void update(
      void Function(GetBucketReplicationRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketReplicationRequestPayload build() => _build();

  _$GetBucketReplicationRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketReplicationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas