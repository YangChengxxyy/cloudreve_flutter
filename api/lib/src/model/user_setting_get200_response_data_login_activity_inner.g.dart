// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_setting_get200_response_data_login_activity_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum
    _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnum_passkey =
    const UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum._(
        'passkey');
const UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum
    _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnum_openid =
    const UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum._(
        'openid');

UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum
    _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnumValueOf(
        String name) {
  switch (name) {
    case 'passkey':
      return _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnum_passkey;
    case 'openid':
      return _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnum_openid;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum>
    _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnumValues =
    BuiltSet<
        UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum>(const <UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum>[
  _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnum_passkey,
  _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnum_openid,
]);

Serializer<UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum>
    _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnumSerializer =
    _$UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnumSerializer();

class _$UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnumSerializer
    implements
        PrimitiveSerializer<
            UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'passkey': 'passkey',
    'openid': 'openid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'passkey': 'passkey',
    'openid': 'openid',
  };

  @override
  final Iterable<Type> types = const <Type>[
    UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum
  ];
  @override
  final String wireName =
      'UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum';

  @override
  Object serialize(Serializers serializers,
          UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UserSettingGet200ResponseDataLoginActivityInner
    extends UserSettingGet200ResponseDataLoginActivityInner {
  @override
  final DateTime createdAt;
  @override
  final String ip;
  @override
  final String browser;
  @override
  final String device;
  @override
  final String os;
  @override
  final UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum loginWith;
  @override
  final int openIdProvider;
  @override
  final bool success;
  @override
  final bool webdav;

  factory _$UserSettingGet200ResponseDataLoginActivityInner(
          [void Function(
                  UserSettingGet200ResponseDataLoginActivityInnerBuilder)?
              updates]) =>
      (UserSettingGet200ResponseDataLoginActivityInnerBuilder()
            ..update(updates))
          ._build();

  _$UserSettingGet200ResponseDataLoginActivityInner._(
      {required this.createdAt,
      required this.ip,
      required this.browser,
      required this.device,
      required this.os,
      required this.loginWith,
      required this.openIdProvider,
      required this.success,
      required this.webdav})
      : super._();
  @override
  UserSettingGet200ResponseDataLoginActivityInner rebuild(
          void Function(UserSettingGet200ResponseDataLoginActivityInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSettingGet200ResponseDataLoginActivityInnerBuilder toBuilder() =>
      UserSettingGet200ResponseDataLoginActivityInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSettingGet200ResponseDataLoginActivityInner &&
        createdAt == other.createdAt &&
        ip == other.ip &&
        browser == other.browser &&
        device == other.device &&
        os == other.os &&
        loginWith == other.loginWith &&
        openIdProvider == other.openIdProvider &&
        success == other.success &&
        webdav == other.webdav;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, ip.hashCode);
    _$hash = $jc(_$hash, browser.hashCode);
    _$hash = $jc(_$hash, device.hashCode);
    _$hash = $jc(_$hash, os.hashCode);
    _$hash = $jc(_$hash, loginWith.hashCode);
    _$hash = $jc(_$hash, openIdProvider.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, webdav.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'UserSettingGet200ResponseDataLoginActivityInner')
          ..add('createdAt', createdAt)
          ..add('ip', ip)
          ..add('browser', browser)
          ..add('device', device)
          ..add('os', os)
          ..add('loginWith', loginWith)
          ..add('openIdProvider', openIdProvider)
          ..add('success', success)
          ..add('webdav', webdav))
        .toString();
  }
}

class UserSettingGet200ResponseDataLoginActivityInnerBuilder
    implements
        Builder<UserSettingGet200ResponseDataLoginActivityInner,
            UserSettingGet200ResponseDataLoginActivityInnerBuilder> {
  _$UserSettingGet200ResponseDataLoginActivityInner? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _ip;
  String? get ip => _$this._ip;
  set ip(String? ip) => _$this._ip = ip;

  String? _browser;
  String? get browser => _$this._browser;
  set browser(String? browser) => _$this._browser = browser;

  String? _device;
  String? get device => _$this._device;
  set device(String? device) => _$this._device = device;

  String? _os;
  String? get os => _$this._os;
  set os(String? os) => _$this._os = os;

  UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum? _loginWith;
  UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum? get loginWith =>
      _$this._loginWith;
  set loginWith(
          UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum?
              loginWith) =>
      _$this._loginWith = loginWith;

  int? _openIdProvider;
  int? get openIdProvider => _$this._openIdProvider;
  set openIdProvider(int? openIdProvider) =>
      _$this._openIdProvider = openIdProvider;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _webdav;
  bool? get webdav => _$this._webdav;
  set webdav(bool? webdav) => _$this._webdav = webdav;

  UserSettingGet200ResponseDataLoginActivityInnerBuilder() {
    UserSettingGet200ResponseDataLoginActivityInner._defaults(this);
  }

  UserSettingGet200ResponseDataLoginActivityInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _ip = $v.ip;
      _browser = $v.browser;
      _device = $v.device;
      _os = $v.os;
      _loginWith = $v.loginWith;
      _openIdProvider = $v.openIdProvider;
      _success = $v.success;
      _webdav = $v.webdav;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSettingGet200ResponseDataLoginActivityInner other) {
    _$v = other as _$UserSettingGet200ResponseDataLoginActivityInner;
  }

  @override
  void update(
      void Function(UserSettingGet200ResponseDataLoginActivityInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSettingGet200ResponseDataLoginActivityInner build() => _build();

  _$UserSettingGet200ResponseDataLoginActivityInner _build() {
    final _$result = _$v ??
        _$UserSettingGet200ResponseDataLoginActivityInner._(
          createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
              r'UserSettingGet200ResponseDataLoginActivityInner', 'createdAt'),
          ip: BuiltValueNullFieldError.checkNotNull(
              ip, r'UserSettingGet200ResponseDataLoginActivityInner', 'ip'),
          browser: BuiltValueNullFieldError.checkNotNull(browser,
              r'UserSettingGet200ResponseDataLoginActivityInner', 'browser'),
          device: BuiltValueNullFieldError.checkNotNull(device,
              r'UserSettingGet200ResponseDataLoginActivityInner', 'device'),
          os: BuiltValueNullFieldError.checkNotNull(
              os, r'UserSettingGet200ResponseDataLoginActivityInner', 'os'),
          loginWith: BuiltValueNullFieldError.checkNotNull(loginWith,
              r'UserSettingGet200ResponseDataLoginActivityInner', 'loginWith'),
          openIdProvider: BuiltValueNullFieldError.checkNotNull(
              openIdProvider,
              r'UserSettingGet200ResponseDataLoginActivityInner',
              'openIdProvider'),
          success: BuiltValueNullFieldError.checkNotNull(success,
              r'UserSettingGet200ResponseDataLoginActivityInner', 'success'),
          webdav: BuiltValueNullFieldError.checkNotNull(webdav,
              r'UserSettingGet200ResponseDataLoginActivityInner', 'webdav'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
