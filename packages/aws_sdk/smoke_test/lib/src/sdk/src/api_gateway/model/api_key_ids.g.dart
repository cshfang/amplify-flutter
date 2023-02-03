// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.api_key_ids;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiKeyIds extends ApiKeyIds {
  @override
  final _i2.BuiltList<String>? ids;
  @override
  final _i2.BuiltList<String>? warnings;

  factory _$ApiKeyIds([void Function(ApiKeyIdsBuilder)? updates]) =>
      (new ApiKeyIdsBuilder()..update(updates))._build();

  _$ApiKeyIds._({this.ids, this.warnings}) : super._();

  @override
  ApiKeyIds rebuild(void Function(ApiKeyIdsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiKeyIdsBuilder toBuilder() => new ApiKeyIdsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiKeyIds && ids == other.ids && warnings == other.warnings;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ids.hashCode), warnings.hashCode));
  }
}

class ApiKeyIdsBuilder implements Builder<ApiKeyIds, ApiKeyIdsBuilder> {
  _$ApiKeyIds? _$v;

  _i2.ListBuilder<String>? _ids;
  _i2.ListBuilder<String> get ids =>
      _$this._ids ??= new _i2.ListBuilder<String>();
  set ids(_i2.ListBuilder<String>? ids) => _$this._ids = ids;

  _i2.ListBuilder<String>? _warnings;
  _i2.ListBuilder<String> get warnings =>
      _$this._warnings ??= new _i2.ListBuilder<String>();
  set warnings(_i2.ListBuilder<String>? warnings) =>
      _$this._warnings = warnings;

  ApiKeyIdsBuilder() {
    ApiKeyIds._init(this);
  }

  ApiKeyIdsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiKeyIds other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiKeyIds;
  }

  @override
  void update(void Function(ApiKeyIdsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiKeyIds build() => _build();

  _$ApiKeyIds _build() {
    _$ApiKeyIds _$result;
    try {
      _$result = _$v ??
          new _$ApiKeyIds._(ids: _ids?.build(), warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ids';
        _ids?.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApiKeyIds', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas