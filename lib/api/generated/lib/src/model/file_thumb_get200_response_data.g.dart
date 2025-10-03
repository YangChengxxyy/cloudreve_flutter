// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_thumb_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileThumbGet200ResponseData extends FileThumbGet200ResponseData {
  @override
  final String url;
  @override
  final bool? obfuscated;
  @override
  final DateTime expires;

  factory _$FileThumbGet200ResponseData(
          [void Function(FileThumbGet200ResponseDataBuilder)? updates]) =>
      (FileThumbGet200ResponseDataBuilder()..update(updates))._build();

  _$FileThumbGet200ResponseData._(
      {required this.url, this.obfuscated, required this.expires})
      : super._();
  @override
  FileThumbGet200ResponseData rebuild(
          void Function(FileThumbGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileThumbGet200ResponseDataBuilder toBuilder() =>
      FileThumbGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileThumbGet200ResponseData &&
        url == other.url &&
        obfuscated == other.obfuscated &&
        expires == other.expires;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, obfuscated.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileThumbGet200ResponseData')
          ..add('url', url)
          ..add('obfuscated', obfuscated)
          ..add('expires', expires))
        .toString();
  }
}

class FileThumbGet200ResponseDataBuilder
    implements
        Builder<FileThumbGet200ResponseData,
            FileThumbGet200ResponseDataBuilder> {
  _$FileThumbGet200ResponseData? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  bool? _obfuscated;
  bool? get obfuscated => _$this._obfuscated;
  set obfuscated(bool? obfuscated) => _$this._obfuscated = obfuscated;

  DateTime? _expires;
  DateTime? get expires => _$this._expires;
  set expires(DateTime? expires) => _$this._expires = expires;

  FileThumbGet200ResponseDataBuilder() {
    FileThumbGet200ResponseData._defaults(this);
  }

  FileThumbGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _obfuscated = $v.obfuscated;
      _expires = $v.expires;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileThumbGet200ResponseData other) {
    _$v = other as _$FileThumbGet200ResponseData;
  }

  @override
  void update(void Function(FileThumbGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileThumbGet200ResponseData build() => _build();

  _$FileThumbGet200ResponseData _build() {
    final _$result = _$v ??
        _$FileThumbGet200ResponseData._(
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'FileThumbGet200ResponseData', 'url'),
          obfuscated: obfuscated,
          expires: BuiltValueNullFieldError.checkNotNull(
              expires, r'FileThumbGet200ResponseData', 'expires'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
