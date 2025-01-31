// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.evaluation_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvaluationResult extends EvaluationResult {
  @override
  final String? annotation;
  @override
  final _i2.ComplianceType? complianceType;
  @override
  final DateTime? configRuleInvokedTime;
  @override
  final _i3.EvaluationResultIdentifier? evaluationResultIdentifier;
  @override
  final DateTime? resultRecordedTime;
  @override
  final String? resultToken;

  factory _$EvaluationResult(
          [void Function(EvaluationResultBuilder)? updates]) =>
      (new EvaluationResultBuilder()..update(updates))._build();

  _$EvaluationResult._(
      {this.annotation,
      this.complianceType,
      this.configRuleInvokedTime,
      this.evaluationResultIdentifier,
      this.resultRecordedTime,
      this.resultToken})
      : super._();

  @override
  EvaluationResult rebuild(void Function(EvaluationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvaluationResultBuilder toBuilder() =>
      new EvaluationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvaluationResult &&
        annotation == other.annotation &&
        complianceType == other.complianceType &&
        configRuleInvokedTime == other.configRuleInvokedTime &&
        evaluationResultIdentifier == other.evaluationResultIdentifier &&
        resultRecordedTime == other.resultRecordedTime &&
        resultToken == other.resultToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, annotation.hashCode);
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, configRuleInvokedTime.hashCode);
    _$hash = $jc(_$hash, evaluationResultIdentifier.hashCode);
    _$hash = $jc(_$hash, resultRecordedTime.hashCode);
    _$hash = $jc(_$hash, resultToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EvaluationResultBuilder
    implements Builder<EvaluationResult, EvaluationResultBuilder> {
  _$EvaluationResult? _$v;

  String? _annotation;
  String? get annotation => _$this._annotation;
  set annotation(String? annotation) => _$this._annotation = annotation;

  _i2.ComplianceType? _complianceType;
  _i2.ComplianceType? get complianceType => _$this._complianceType;
  set complianceType(_i2.ComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  DateTime? _configRuleInvokedTime;
  DateTime? get configRuleInvokedTime => _$this._configRuleInvokedTime;
  set configRuleInvokedTime(DateTime? configRuleInvokedTime) =>
      _$this._configRuleInvokedTime = configRuleInvokedTime;

  _i3.EvaluationResultIdentifierBuilder? _evaluationResultIdentifier;
  _i3.EvaluationResultIdentifierBuilder get evaluationResultIdentifier =>
      _$this._evaluationResultIdentifier ??=
          new _i3.EvaluationResultIdentifierBuilder();
  set evaluationResultIdentifier(
          _i3.EvaluationResultIdentifierBuilder? evaluationResultIdentifier) =>
      _$this._evaluationResultIdentifier = evaluationResultIdentifier;

  DateTime? _resultRecordedTime;
  DateTime? get resultRecordedTime => _$this._resultRecordedTime;
  set resultRecordedTime(DateTime? resultRecordedTime) =>
      _$this._resultRecordedTime = resultRecordedTime;

  String? _resultToken;
  String? get resultToken => _$this._resultToken;
  set resultToken(String? resultToken) => _$this._resultToken = resultToken;

  EvaluationResultBuilder() {
    EvaluationResult._init(this);
  }

  EvaluationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _annotation = $v.annotation;
      _complianceType = $v.complianceType;
      _configRuleInvokedTime = $v.configRuleInvokedTime;
      _evaluationResultIdentifier = $v.evaluationResultIdentifier?.toBuilder();
      _resultRecordedTime = $v.resultRecordedTime;
      _resultToken = $v.resultToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvaluationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EvaluationResult;
  }

  @override
  void update(void Function(EvaluationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvaluationResult build() => _build();

  _$EvaluationResult _build() {
    _$EvaluationResult _$result;
    try {
      _$result = _$v ??
          new _$EvaluationResult._(
              annotation: annotation,
              complianceType: complianceType,
              configRuleInvokedTime: configRuleInvokedTime,
              evaluationResultIdentifier: _evaluationResultIdentifier?.build(),
              resultRecordedTime: resultRecordedTime,
              resultToken: resultToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evaluationResultIdentifier';
        _evaluationResultIdentifier?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EvaluationResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
