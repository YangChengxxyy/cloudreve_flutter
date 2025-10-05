// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_create_service.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShareCreateService extends ShareCreateService {
  @override
  final PermissionSetting? permissions;
  @override
  final String? uri;
  @override
  final bool? isPrivate;
  @override
  final bool? shareView;
  @override
  final int? expire;
  @override
  final int? price;
  @override
  final String? password;
  @override
  final bool? showReadme;

  factory _$ShareCreateService(
          [void Function(ShareCreateServiceBuilder)? updates]) =>
      (ShareCreateServiceBuilder()..update(updates))._build();

  _$ShareCreateService._(
      {this.permissions,
      this.uri,
      this.isPrivate,
      this.shareView,
      this.expire,
      this.price,
      this.password,
      this.showReadme})
      : super._();
  @override
  ShareCreateService rebuild(
          void Function(ShareCreateServiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareCreateServiceBuilder toBuilder() =>
      ShareCreateServiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareCreateService &&
        permissions == other.permissions &&
        uri == other.uri &&
        isPrivate == other.isPrivate &&
        shareView == other.shareView &&
        expire == other.expire &&
        price == other.price &&
        password == other.password &&
        showReadme == other.showReadme;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, isPrivate.hashCode);
    _$hash = $jc(_$hash, shareView.hashCode);
    _$hash = $jc(_$hash, expire.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, showReadme.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareCreateService')
          ..add('permissions', permissions)
          ..add('uri', uri)
          ..add('isPrivate', isPrivate)
          ..add('shareView', shareView)
          ..add('expire', expire)
          ..add('price', price)
          ..add('password', password)
          ..add('showReadme', showReadme))
        .toString();
  }
}

class ShareCreateServiceBuilder
    implements Builder<ShareCreateService, ShareCreateServiceBuilder> {
  _$ShareCreateService? _$v;

  PermissionSettingBuilder? _permissions;
  PermissionSettingBuilder get permissions =>
      _$this._permissions ??= PermissionSettingBuilder();
  set permissions(PermissionSettingBuilder? permissions) =>
      _$this._permissions = permissions;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  bool? _isPrivate;
  bool? get isPrivate => _$this._isPrivate;
  set isPrivate(bool? isPrivate) => _$this._isPrivate = isPrivate;

  bool? _shareView;
  bool? get shareView => _$this._shareView;
  set shareView(bool? shareView) => _$this._shareView = shareView;

  int? _expire;
  int? get expire => _$this._expire;
  set expire(int? expire) => _$this._expire = expire;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _showReadme;
  bool? get showReadme => _$this._showReadme;
  set showReadme(bool? showReadme) => _$this._showReadme = showReadme;

  ShareCreateServiceBuilder() {
    ShareCreateService._defaults(this);
  }

  ShareCreateServiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _permissions = $v.permissions?.toBuilder();
      _uri = $v.uri;
      _isPrivate = $v.isPrivate;
      _shareView = $v.shareView;
      _expire = $v.expire;
      _price = $v.price;
      _password = $v.password;
      _showReadme = $v.showReadme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareCreateService other) {
    _$v = other as _$ShareCreateService;
  }

  @override
  void update(void Function(ShareCreateServiceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareCreateService build() => _build();

  _$ShareCreateService _build() {
    _$ShareCreateService _$result;
    try {
      _$result = _$v ??
          _$ShareCreateService._(
            permissions: _permissions?.build(),
            uri: uri,
            isPrivate: isPrivate,
            shareView: shareView,
            expire: expire,
            price: price,
            password: password,
            showReadme: showReadme,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ShareCreateService', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
