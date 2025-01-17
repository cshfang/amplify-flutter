// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.table_auto_scaling_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TableAutoScalingDescription extends TableAutoScalingDescription {
  @override
  final _i4.BuiltList<_i2.ReplicaAutoScalingDescription>? replicas;
  @override
  final String? tableName;
  @override
  final _i3.TableStatus? tableStatus;

  factory _$TableAutoScalingDescription(
          [void Function(TableAutoScalingDescriptionBuilder)? updates]) =>
      (new TableAutoScalingDescriptionBuilder()..update(updates))._build();

  _$TableAutoScalingDescription._(
      {this.replicas, this.tableName, this.tableStatus})
      : super._();

  @override
  TableAutoScalingDescription rebuild(
          void Function(TableAutoScalingDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableAutoScalingDescriptionBuilder toBuilder() =>
      new TableAutoScalingDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TableAutoScalingDescription &&
        replicas == other.replicas &&
        tableName == other.tableName &&
        tableStatus == other.tableStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, replicas.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, tableStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TableAutoScalingDescriptionBuilder
    implements
        Builder<TableAutoScalingDescription,
            TableAutoScalingDescriptionBuilder> {
  _$TableAutoScalingDescription? _$v;

  _i4.ListBuilder<_i2.ReplicaAutoScalingDescription>? _replicas;
  _i4.ListBuilder<_i2.ReplicaAutoScalingDescription> get replicas =>
      _$this._replicas ??=
          new _i4.ListBuilder<_i2.ReplicaAutoScalingDescription>();
  set replicas(_i4.ListBuilder<_i2.ReplicaAutoScalingDescription>? replicas) =>
      _$this._replicas = replicas;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i3.TableStatus? _tableStatus;
  _i3.TableStatus? get tableStatus => _$this._tableStatus;
  set tableStatus(_i3.TableStatus? tableStatus) =>
      _$this._tableStatus = tableStatus;

  TableAutoScalingDescriptionBuilder() {
    TableAutoScalingDescription._init(this);
  }

  TableAutoScalingDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replicas = $v.replicas?.toBuilder();
      _tableName = $v.tableName;
      _tableStatus = $v.tableStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableAutoScalingDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TableAutoScalingDescription;
  }

  @override
  void update(void Function(TableAutoScalingDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TableAutoScalingDescription build() => _build();

  _$TableAutoScalingDescription _build() {
    _$TableAutoScalingDescription _$result;
    try {
      _$result = _$v ??
          new _$TableAutoScalingDescription._(
              replicas: _replicas?.build(),
              tableName: tableName,
              tableStatus: tableStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicas';
        _replicas?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TableAutoScalingDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
