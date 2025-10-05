// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_url_post200_response_data_urls_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileUrlPost200ResponseDataUrlsInner
    extends FileUrlPost200ResponseDataUrlsInner {
  @override
  final String? url;
  @override
  final String? streamSaverDisplayName;

  factory _$FileUrlPost200ResponseDataUrlsInner(
          [void Function(FileUrlPost200ResponseDataUrlsInnerBuilder)?
              updates]) =>
      (FileUrlPost200ResponseDataUrlsInnerBuilder()..update(updates))._build();

  _$FileUrlPost200ResponseDataUrlsInner._(
      {this.url, this.streamSaverDisplayName})
      : super._();
  @override
  FileUrlPost200ResponseDataUrlsInner rebuild(
          void Function(FileUrlPost200ResponseDataUrlsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileUrlPost200ResponseDataUrlsInnerBuilder toBuilder() =>
      FileUrlPost200ResponseDataUrlsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileUrlPost200ResponseDataUrlsInner &&
        url == other.url &&
        streamSaverDisplayName == other.streamSaverDisplayName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, streamSaverDisplayName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileUrlPost200ResponseDataUrlsInner')
          ..add('url', url)
          ..add('streamSaverDisplayName', streamSaverDisplayName))
        .toString();
  }
}

class FileUrlPost200ResponseDataUrlsInnerBuilder
    implements
        Builder<FileUrlPost200ResponseDataUrlsInner,
            FileUrlPost200ResponseDataUrlsInnerBuilder> {
  _$FileUrlPost200ResponseDataUrlsInner? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _streamSaverDisplayName;
  String? get streamSaverDisplayName => _$this._streamSaverDisplayName;
  set streamSaverDisplayName(String? streamSaverDisplayName) =>
      _$this._streamSaverDisplayName = streamSaverDisplayName;

  FileUrlPost200ResponseDataUrlsInnerBuilder() {
    FileUrlPost200ResponseDataUrlsInner._defaults(this);
  }

  FileUrlPost200ResponseDataUrlsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _streamSaverDisplayName = $v.streamSaverDisplayName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileUrlPost200ResponseDataUrlsInner other) {
    _$v = other as _$FileUrlPost200ResponseDataUrlsInner;
  }

  @override
  void update(
      void Function(FileUrlPost200ResponseDataUrlsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileUrlPost200ResponseDataUrlsInner build() => _build();

  _$FileUrlPost200ResponseDataUrlsInner _build() {
    final _$result = _$v ??
        _$FileUrlPost200ResponseDataUrlsInner._(
          url: url,
          streamSaverDisplayName: streamSaverDisplayName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
