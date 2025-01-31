// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_versioning_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketVersioningRequest extends PutBucketVersioningRequest {
  @override
  final String bucket;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? contentMd5;
  @override
  final String? expectedBucketOwner;
  @override
  final String? mfa;
  @override
  final _i2.VersioningConfiguration versioningConfiguration;

  factory _$PutBucketVersioningRequest(
          [void Function(PutBucketVersioningRequestBuilder)? updates]) =>
      (new PutBucketVersioningRequestBuilder()..update(updates))._build();

  _$PutBucketVersioningRequest._(
      {required this.bucket,
      this.checksumAlgorithm,
      this.contentMd5,
      this.expectedBucketOwner,
      this.mfa,
      required this.versioningConfiguration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketVersioningRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(versioningConfiguration,
        r'PutBucketVersioningRequest', 'versioningConfiguration');
  }

  @override
  PutBucketVersioningRequest rebuild(
          void Function(PutBucketVersioningRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketVersioningRequestBuilder toBuilder() =>
      new PutBucketVersioningRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketVersioningRequest &&
        bucket == other.bucket &&
        checksumAlgorithm == other.checksumAlgorithm &&
        contentMd5 == other.contentMd5 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        mfa == other.mfa &&
        versioningConfiguration == other.versioningConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, mfa.hashCode);
    _$hash = $jc(_$hash, versioningConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketVersioningRequestBuilder
    implements
        Builder<PutBucketVersioningRequest, PutBucketVersioningRequestBuilder> {
  _$PutBucketVersioningRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _mfa;
  String? get mfa => _$this._mfa;
  set mfa(String? mfa) => _$this._mfa = mfa;

  _i2.VersioningConfigurationBuilder? _versioningConfiguration;
  _i2.VersioningConfigurationBuilder get versioningConfiguration =>
      _$this._versioningConfiguration ??=
          new _i2.VersioningConfigurationBuilder();
  set versioningConfiguration(
          _i2.VersioningConfigurationBuilder? versioningConfiguration) =>
      _$this._versioningConfiguration = versioningConfiguration;

  PutBucketVersioningRequestBuilder() {
    PutBucketVersioningRequest._init(this);
  }

  PutBucketVersioningRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _contentMd5 = $v.contentMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _mfa = $v.mfa;
      _versioningConfiguration = $v.versioningConfiguration.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketVersioningRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketVersioningRequest;
  }

  @override
  void update(void Function(PutBucketVersioningRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketVersioningRequest build() => _build();

  _$PutBucketVersioningRequest _build() {
    _$PutBucketVersioningRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketVersioningRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketVersioningRequest', 'bucket'),
              checksumAlgorithm: checksumAlgorithm,
              contentMd5: contentMd5,
              expectedBucketOwner: expectedBucketOwner,
              mfa: mfa,
              versioningConfiguration: versioningConfiguration.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'versioningConfiguration';
        versioningConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketVersioningRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
