// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_url_post200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileUrlPost200ResponseData extends FileUrlPost200ResponseData {
  @override
  final BuiltList<FileUrlPost200ResponseDataUrlsInner> urls;
  @override
  final int expires;

  factory _$FileUrlPost200ResponseData(
          [void Function(FileUrlPost200ResponseDataBuilder)? updates]) =>
      (FileUrlPost200ResponseDataBuilder()..update(updates))._build();

  _$FileUrlPost200ResponseData._({required this.urls, required this.expires})
      : super._();
  @override
  FileUrlPost200ResponseData rebuild(
          void Function(FileUrlPost200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileUrlPost200ResponseDataBuilder toBuilder() =>
      FileUrlPost200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileUrlPost200ResponseData &&
        urls == other.urls &&
        expires == other.expires;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, urls.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileUrlPost200ResponseData')
          ..add('urls', urls)
          ..add('expires', expires))
        .toString();
  }
}

class FileUrlPost200ResponseDataBuilder
    implements
        Builder<FileUrlPost200ResponseData, FileUrlPost200ResponseDataBuilder> {
  _$FileUrlPost200ResponseData? _$v;

  ListBuilder<FileUrlPost200ResponseDataUrlsInner>? _urls;
  ListBuilder<FileUrlPost200ResponseDataUrlsInner> get urls =>
      _$this._urls ??= ListBuilder<FileUrlPost200ResponseDataUrlsInner>();
  set urls(ListBuilder<FileUrlPost200ResponseDataUrlsInner>? urls) =>
      _$this._urls = urls;

  int? _expires;
  int? get expires => _$this._expires;
  set expires(int? expires) => _$this._expires = expires;

  FileUrlPost200ResponseDataBuilder() {
    FileUrlPost200ResponseData._defaults(this);
  }

  FileUrlPost200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _urls = $v.urls.toBuilder();
      _expires = $v.expires;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileUrlPost200ResponseData other) {
    _$v = other as _$FileUrlPost200ResponseData;
  }

  @override
  void update(void Function(FileUrlPost200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileUrlPost200ResponseData build() => _build();

  _$FileUrlPost200ResponseData _build() {
    _$FileUrlPost200ResponseData _$result;
    try {
      _$result = _$v ??
          _$FileUrlPost200ResponseData._(
            urls: urls.build(),
            expires: BuiltValueNullFieldError.checkNotNull(
                expires, r'FileUrlPost200ResponseData', 'expires'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'urls';
        urls.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileUrlPost200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
