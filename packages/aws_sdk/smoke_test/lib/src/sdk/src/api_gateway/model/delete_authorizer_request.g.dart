// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_authorizer_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteAuthorizerRequest extends DeleteAuthorizerRequest {
  @override
  final String authorizerId;
  @override
  final String restApiId;

  factory _$DeleteAuthorizerRequest(
          [void Function(DeleteAuthorizerRequestBuilder)? updates]) =>
      (new DeleteAuthorizerRequestBuilder()..update(updates))._build();

  _$DeleteAuthorizerRequest._(
      {required this.authorizerId, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authorizerId, r'DeleteAuthorizerRequest', 'authorizerId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteAuthorizerRequest', 'restApiId');
  }

  @override
  DeleteAuthorizerRequest rebuild(
          void Function(DeleteAuthorizerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteAuthorizerRequestBuilder toBuilder() =>
      new DeleteAuthorizerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteAuthorizerRequest &&
        authorizerId == other.authorizerId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorizerId.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteAuthorizerRequestBuilder
    implements
        Builder<DeleteAuthorizerRequest, DeleteAuthorizerRequestBuilder> {
  _$DeleteAuthorizerRequest? _$v;

  String? _authorizerId;
  String? get authorizerId => _$this._authorizerId;
  set authorizerId(String? authorizerId) => _$this._authorizerId = authorizerId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  DeleteAuthorizerRequestBuilder() {
    DeleteAuthorizerRequest._init(this);
  }

  DeleteAuthorizerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorizerId = $v.authorizerId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteAuthorizerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteAuthorizerRequest;
  }

  @override
  void update(void Function(DeleteAuthorizerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteAuthorizerRequest build() => _build();

  _$DeleteAuthorizerRequest _build() {
    final _$result = _$v ??
        new _$DeleteAuthorizerRequest._(
            authorizerId: BuiltValueNullFieldError.checkNotNull(
                authorizerId, r'DeleteAuthorizerRequest', 'authorizerId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteAuthorizerRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteAuthorizerRequestPayload extends DeleteAuthorizerRequestPayload {
  factory _$DeleteAuthorizerRequestPayload(
          [void Function(DeleteAuthorizerRequestPayloadBuilder)? updates]) =>
      (new DeleteAuthorizerRequestPayloadBuilder()..update(updates))._build();

  _$DeleteAuthorizerRequestPayload._() : super._();

  @override
  DeleteAuthorizerRequestPayload rebuild(
          void Function(DeleteAuthorizerRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteAuthorizerRequestPayloadBuilder toBuilder() =>
      new DeleteAuthorizerRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteAuthorizerRequestPayload;
  }

  @override
  int get hashCode {
    return 301436144;
  }
}

class DeleteAuthorizerRequestPayloadBuilder
    implements
        Builder<DeleteAuthorizerRequestPayload,
            DeleteAuthorizerRequestPayloadBuilder> {
  _$DeleteAuthorizerRequestPayload? _$v;

  DeleteAuthorizerRequestPayloadBuilder() {
    DeleteAuthorizerRequestPayload._init(this);
  }

  @override
  void replace(DeleteAuthorizerRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteAuthorizerRequestPayload;
  }

  @override
  void update(void Function(DeleteAuthorizerRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteAuthorizerRequestPayload build() => _build();

  _$DeleteAuthorizerRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteAuthorizerRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
