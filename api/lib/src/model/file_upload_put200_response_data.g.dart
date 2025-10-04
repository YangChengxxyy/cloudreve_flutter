// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_upload_put200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileUploadPut200ResponseData extends FileUploadPut200ResponseData {
  @override
  final String sessionId;
  @override
  final String? uploadId;
  @override
  final int chunkSize;
  @override
  final int expires;
  @override
  final BuiltList<String>? uploadUrls;
  @override
  final String? credential;
  @override
  final String? completeURL;
  @override
  final StoragePolicy storagePolicy;
  @override
  final String? mimeType;
  @override
  final String? uploadPolicy;

  factory _$FileUploadPut200ResponseData(
          [void Function(FileUploadPut200ResponseDataBuilder)? updates]) =>
      (FileUploadPut200ResponseDataBuilder()..update(updates))._build();

  _$FileUploadPut200ResponseData._(
      {required this.sessionId,
      this.uploadId,
      required this.chunkSize,
      required this.expires,
      this.uploadUrls,
      this.credential,
      this.completeURL,
      required this.storagePolicy,
      this.mimeType,
      this.uploadPolicy})
      : super._();
  @override
  FileUploadPut200ResponseData rebuild(
          void Function(FileUploadPut200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileUploadPut200ResponseDataBuilder toBuilder() =>
      FileUploadPut200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileUploadPut200ResponseData &&
        sessionId == other.sessionId &&
        uploadId == other.uploadId &&
        chunkSize == other.chunkSize &&
        expires == other.expires &&
        uploadUrls == other.uploadUrls &&
        credential == other.credential &&
        completeURL == other.completeURL &&
        storagePolicy == other.storagePolicy &&
        mimeType == other.mimeType &&
        uploadPolicy == other.uploadPolicy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jc(_$hash, chunkSize.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jc(_$hash, uploadUrls.hashCode);
    _$hash = $jc(_$hash, credential.hashCode);
    _$hash = $jc(_$hash, completeURL.hashCode);
    _$hash = $jc(_$hash, storagePolicy.hashCode);
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jc(_$hash, uploadPolicy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileUploadPut200ResponseData')
          ..add('sessionId', sessionId)
          ..add('uploadId', uploadId)
          ..add('chunkSize', chunkSize)
          ..add('expires', expires)
          ..add('uploadUrls', uploadUrls)
          ..add('credential', credential)
          ..add('completeURL', completeURL)
          ..add('storagePolicy', storagePolicy)
          ..add('mimeType', mimeType)
          ..add('uploadPolicy', uploadPolicy))
        .toString();
  }
}

class FileUploadPut200ResponseDataBuilder
    implements
        Builder<FileUploadPut200ResponseData,
            FileUploadPut200ResponseDataBuilder> {
  _$FileUploadPut200ResponseData? _$v;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  int? _chunkSize;
  int? get chunkSize => _$this._chunkSize;
  set chunkSize(int? chunkSize) => _$this._chunkSize = chunkSize;

  int? _expires;
  int? get expires => _$this._expires;
  set expires(int? expires) => _$this._expires = expires;

  ListBuilder<String>? _uploadUrls;
  ListBuilder<String> get uploadUrls =>
      _$this._uploadUrls ??= ListBuilder<String>();
  set uploadUrls(ListBuilder<String>? uploadUrls) =>
      _$this._uploadUrls = uploadUrls;

  String? _credential;
  String? get credential => _$this._credential;
  set credential(String? credential) => _$this._credential = credential;

  String? _completeURL;
  String? get completeURL => _$this._completeURL;
  set completeURL(String? completeURL) => _$this._completeURL = completeURL;

  StoragePolicyBuilder? _storagePolicy;
  StoragePolicyBuilder get storagePolicy =>
      _$this._storagePolicy ??= StoragePolicyBuilder();
  set storagePolicy(StoragePolicyBuilder? storagePolicy) =>
      _$this._storagePolicy = storagePolicy;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  String? _uploadPolicy;
  String? get uploadPolicy => _$this._uploadPolicy;
  set uploadPolicy(String? uploadPolicy) => _$this._uploadPolicy = uploadPolicy;

  FileUploadPut200ResponseDataBuilder() {
    FileUploadPut200ResponseData._defaults(this);
  }

  FileUploadPut200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessionId = $v.sessionId;
      _uploadId = $v.uploadId;
      _chunkSize = $v.chunkSize;
      _expires = $v.expires;
      _uploadUrls = $v.uploadUrls?.toBuilder();
      _credential = $v.credential;
      _completeURL = $v.completeURL;
      _storagePolicy = $v.storagePolicy.toBuilder();
      _mimeType = $v.mimeType;
      _uploadPolicy = $v.uploadPolicy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileUploadPut200ResponseData other) {
    _$v = other as _$FileUploadPut200ResponseData;
  }

  @override
  void update(void Function(FileUploadPut200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileUploadPut200ResponseData build() => _build();

  _$FileUploadPut200ResponseData _build() {
    _$FileUploadPut200ResponseData _$result;
    try {
      _$result = _$v ??
          _$FileUploadPut200ResponseData._(
            sessionId: BuiltValueNullFieldError.checkNotNull(
                sessionId, r'FileUploadPut200ResponseData', 'sessionId'),
            uploadId: uploadId,
            chunkSize: BuiltValueNullFieldError.checkNotNull(
                chunkSize, r'FileUploadPut200ResponseData', 'chunkSize'),
            expires: BuiltValueNullFieldError.checkNotNull(
                expires, r'FileUploadPut200ResponseData', 'expires'),
            uploadUrls: _uploadUrls?.build(),
            credential: credential,
            completeURL: completeURL,
            storagePolicy: storagePolicy.build(),
            mimeType: mimeType,
            uploadPolicy: uploadPolicy,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uploadUrls';
        _uploadUrls?.build();

        _$failedField = 'storagePolicy';
        storagePolicy.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileUploadPut200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
