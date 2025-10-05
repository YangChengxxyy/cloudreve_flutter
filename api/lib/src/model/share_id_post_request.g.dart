// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_id_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShareIdPostRequest extends ShareIdPostRequest {
  @override
  final PermissionSetting? permissions;
  @override
  final String? uri;
  @override
  final bool? shareView;
  @override
  final int? expire;
  @override
  final int? price;
  @override
  final bool? showReadme;

  factory _$ShareIdPostRequest(
          [void Function(ShareIdPostRequestBuilder)? updates]) =>
      (ShareIdPostRequestBuilder()..update(updates))._build();

  _$ShareIdPostRequest._(
      {this.permissions,
      this.uri,
      this.shareView,
      this.expire,
      this.price,
      this.showReadme})
      : super._();
  @override
  ShareIdPostRequest rebuild(
          void Function(ShareIdPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareIdPostRequestBuilder toBuilder() =>
      ShareIdPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareIdPostRequest &&
        permissions == other.permissions &&
        uri == other.uri &&
        shareView == other.shareView &&
        expire == other.expire &&
        price == other.price &&
        showReadme == other.showReadme;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, shareView.hashCode);
    _$hash = $jc(_$hash, expire.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, showReadme.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareIdPostRequest')
          ..add('permissions', permissions)
          ..add('uri', uri)
          ..add('shareView', shareView)
          ..add('expire', expire)
          ..add('price', price)
          ..add('showReadme', showReadme))
        .toString();
  }
}

class ShareIdPostRequestBuilder
    implements Builder<ShareIdPostRequest, ShareIdPostRequestBuilder> {
  _$ShareIdPostRequest? _$v;

  PermissionSettingBuilder? _permissions;
  PermissionSettingBuilder get permissions =>
      _$this._permissions ??= PermissionSettingBuilder();
  set permissions(PermissionSettingBuilder? permissions) =>
      _$this._permissions = permissions;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  bool? _shareView;
  bool? get shareView => _$this._shareView;
  set shareView(bool? shareView) => _$this._shareView = shareView;

  int? _expire;
  int? get expire => _$this._expire;
  set expire(int? expire) => _$this._expire = expire;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  bool? _showReadme;
  bool? get showReadme => _$this._showReadme;
  set showReadme(bool? showReadme) => _$this._showReadme = showReadme;

  ShareIdPostRequestBuilder() {
    ShareIdPostRequest._defaults(this);
  }

  ShareIdPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _permissions = $v.permissions?.toBuilder();
      _uri = $v.uri;
      _shareView = $v.shareView;
      _expire = $v.expire;
      _price = $v.price;
      _showReadme = $v.showReadme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareIdPostRequest other) {
    _$v = other as _$ShareIdPostRequest;
  }

  @override
  void update(void Function(ShareIdPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareIdPostRequest build() => _build();

  _$ShareIdPostRequest _build() {
    _$ShareIdPostRequest _$result;
    try {
      _$result = _$v ??
          _$ShareIdPostRequest._(
            permissions: _permissions?.build(),
            uri: uri,
            shareView: shareView,
            expire: expire,
            price: price,
            showReadme: showReadme,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ShareIdPostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
