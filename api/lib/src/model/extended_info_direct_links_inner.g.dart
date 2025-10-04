// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_info_direct_links_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExtendedInfoDirectLinksInner extends ExtendedInfoDirectLinksInner {
  @override
  final String id;
  @override
  final String url;
  @override
  final num downloaded;
  @override
  final DateTime createdAt;

  factory _$ExtendedInfoDirectLinksInner(
          [void Function(ExtendedInfoDirectLinksInnerBuilder)? updates]) =>
      (ExtendedInfoDirectLinksInnerBuilder()..update(updates))._build();

  _$ExtendedInfoDirectLinksInner._(
      {required this.id,
      required this.url,
      required this.downloaded,
      required this.createdAt})
      : super._();
  @override
  ExtendedInfoDirectLinksInner rebuild(
          void Function(ExtendedInfoDirectLinksInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtendedInfoDirectLinksInnerBuilder toBuilder() =>
      ExtendedInfoDirectLinksInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExtendedInfoDirectLinksInner &&
        id == other.id &&
        url == other.url &&
        downloaded == other.downloaded &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, downloaded.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExtendedInfoDirectLinksInner')
          ..add('id', id)
          ..add('url', url)
          ..add('downloaded', downloaded)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ExtendedInfoDirectLinksInnerBuilder
    implements
        Builder<ExtendedInfoDirectLinksInner,
            ExtendedInfoDirectLinksInnerBuilder> {
  _$ExtendedInfoDirectLinksInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  num? _downloaded;
  num? get downloaded => _$this._downloaded;
  set downloaded(num? downloaded) => _$this._downloaded = downloaded;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ExtendedInfoDirectLinksInnerBuilder() {
    ExtendedInfoDirectLinksInner._defaults(this);
  }

  ExtendedInfoDirectLinksInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _url = $v.url;
      _downloaded = $v.downloaded;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExtendedInfoDirectLinksInner other) {
    _$v = other as _$ExtendedInfoDirectLinksInner;
  }

  @override
  void update(void Function(ExtendedInfoDirectLinksInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExtendedInfoDirectLinksInner build() => _build();

  _$ExtendedInfoDirectLinksInner _build() {
    final _$result = _$v ??
        _$ExtendedInfoDirectLinksInner._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ExtendedInfoDirectLinksInner', 'id'),
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'ExtendedInfoDirectLinksInner', 'url'),
          downloaded: BuiltValueNullFieldError.checkNotNull(
              downloaded, r'ExtendedInfoDirectLinksInner', 'downloaded'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ExtendedInfoDirectLinksInner', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
