// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_url_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileUrlPostRequest extends FileUrlPostRequest {
  @override
  final BuiltList<String>? uris;
  @override
  final bool? download;
  @override
  final bool? redirect;
  @override
  final String? entity;
  @override
  final bool? usePrimarySiteUrl;
  @override
  final bool? skipError;
  @override
  final bool? archive;
  @override
  final bool? noCache;

  factory _$FileUrlPostRequest(
          [void Function(FileUrlPostRequestBuilder)? updates]) =>
      (FileUrlPostRequestBuilder()..update(updates))._build();

  _$FileUrlPostRequest._(
      {this.uris,
      this.download,
      this.redirect,
      this.entity,
      this.usePrimarySiteUrl,
      this.skipError,
      this.archive,
      this.noCache})
      : super._();
  @override
  FileUrlPostRequest rebuild(
          void Function(FileUrlPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileUrlPostRequestBuilder toBuilder() =>
      FileUrlPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileUrlPostRequest &&
        uris == other.uris &&
        download == other.download &&
        redirect == other.redirect &&
        entity == other.entity &&
        usePrimarySiteUrl == other.usePrimarySiteUrl &&
        skipError == other.skipError &&
        archive == other.archive &&
        noCache == other.noCache;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uris.hashCode);
    _$hash = $jc(_$hash, download.hashCode);
    _$hash = $jc(_$hash, redirect.hashCode);
    _$hash = $jc(_$hash, entity.hashCode);
    _$hash = $jc(_$hash, usePrimarySiteUrl.hashCode);
    _$hash = $jc(_$hash, skipError.hashCode);
    _$hash = $jc(_$hash, archive.hashCode);
    _$hash = $jc(_$hash, noCache.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileUrlPostRequest')
          ..add('uris', uris)
          ..add('download', download)
          ..add('redirect', redirect)
          ..add('entity', entity)
          ..add('usePrimarySiteUrl', usePrimarySiteUrl)
          ..add('skipError', skipError)
          ..add('archive', archive)
          ..add('noCache', noCache))
        .toString();
  }
}

class FileUrlPostRequestBuilder
    implements Builder<FileUrlPostRequest, FileUrlPostRequestBuilder> {
  _$FileUrlPostRequest? _$v;

  ListBuilder<String>? _uris;
  ListBuilder<String> get uris => _$this._uris ??= ListBuilder<String>();
  set uris(ListBuilder<String>? uris) => _$this._uris = uris;

  bool? _download;
  bool? get download => _$this._download;
  set download(bool? download) => _$this._download = download;

  bool? _redirect;
  bool? get redirect => _$this._redirect;
  set redirect(bool? redirect) => _$this._redirect = redirect;

  String? _entity;
  String? get entity => _$this._entity;
  set entity(String? entity) => _$this._entity = entity;

  bool? _usePrimarySiteUrl;
  bool? get usePrimarySiteUrl => _$this._usePrimarySiteUrl;
  set usePrimarySiteUrl(bool? usePrimarySiteUrl) =>
      _$this._usePrimarySiteUrl = usePrimarySiteUrl;

  bool? _skipError;
  bool? get skipError => _$this._skipError;
  set skipError(bool? skipError) => _$this._skipError = skipError;

  bool? _archive;
  bool? get archive => _$this._archive;
  set archive(bool? archive) => _$this._archive = archive;

  bool? _noCache;
  bool? get noCache => _$this._noCache;
  set noCache(bool? noCache) => _$this._noCache = noCache;

  FileUrlPostRequestBuilder() {
    FileUrlPostRequest._defaults(this);
  }

  FileUrlPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uris = $v.uris?.toBuilder();
      _download = $v.download;
      _redirect = $v.redirect;
      _entity = $v.entity;
      _usePrimarySiteUrl = $v.usePrimarySiteUrl;
      _skipError = $v.skipError;
      _archive = $v.archive;
      _noCache = $v.noCache;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileUrlPostRequest other) {
    _$v = other as _$FileUrlPostRequest;
  }

  @override
  void update(void Function(FileUrlPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileUrlPostRequest build() => _build();

  _$FileUrlPostRequest _build() {
    _$FileUrlPostRequest _$result;
    try {
      _$result = _$v ??
          _$FileUrlPostRequest._(
            uris: _uris?.build(),
            download: download,
            redirect: redirect,
            entity: entity,
            usePrimarySiteUrl: usePrimarySiteUrl,
            skipError: skipError,
            archive: archive,
            noCache: noCache,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uris';
        _uris?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileUrlPostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
