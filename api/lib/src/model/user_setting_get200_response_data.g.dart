// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_setting_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserSettingGet200ResponseDataShareLinksInProfileEnum
    _$userSettingGet200ResponseDataShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket =
    const UserSettingGet200ResponseDataShareLinksInProfileEnum._(
        'leftSquareBracketEmptyStringRightSquareBracket');
const UserSettingGet200ResponseDataShareLinksInProfileEnum
    _$userSettingGet200ResponseDataShareLinksInProfileEnum_allShare =
    const UserSettingGet200ResponseDataShareLinksInProfileEnum._('allShare');
const UserSettingGet200ResponseDataShareLinksInProfileEnum
    _$userSettingGet200ResponseDataShareLinksInProfileEnum_hideShare =
    const UserSettingGet200ResponseDataShareLinksInProfileEnum._('hideShare');

UserSettingGet200ResponseDataShareLinksInProfileEnum
    _$userSettingGet200ResponseDataShareLinksInProfileEnumValueOf(String name) {
  switch (name) {
    case 'leftSquareBracketEmptyStringRightSquareBracket':
      return _$userSettingGet200ResponseDataShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
    case 'allShare':
      return _$userSettingGet200ResponseDataShareLinksInProfileEnum_allShare;
    case 'hideShare':
      return _$userSettingGet200ResponseDataShareLinksInProfileEnum_hideShare;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UserSettingGet200ResponseDataShareLinksInProfileEnum>
    _$userSettingGet200ResponseDataShareLinksInProfileEnumValues = BuiltSet<
        UserSettingGet200ResponseDataShareLinksInProfileEnum>(const <UserSettingGet200ResponseDataShareLinksInProfileEnum>[
  _$userSettingGet200ResponseDataShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket,
  _$userSettingGet200ResponseDataShareLinksInProfileEnum_allShare,
  _$userSettingGet200ResponseDataShareLinksInProfileEnum_hideShare,
]);

Serializer<UserSettingGet200ResponseDataShareLinksInProfileEnum>
    _$userSettingGet200ResponseDataShareLinksInProfileEnumSerializer =
    _$UserSettingGet200ResponseDataShareLinksInProfileEnumSerializer();

class _$UserSettingGet200ResponseDataShareLinksInProfileEnumSerializer
    implements
        PrimitiveSerializer<
            UserSettingGet200ResponseDataShareLinksInProfileEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'leftSquareBracketEmptyStringRightSquareBracket': '[Empty string]',
    'allShare': 'all_share',
    'hideShare': 'hide_share',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '[Empty string]': 'leftSquareBracketEmptyStringRightSquareBracket',
    'all_share': 'allShare',
    'hide_share': 'hideShare',
  };

  @override
  final Iterable<Type> types = const <Type>[
    UserSettingGet200ResponseDataShareLinksInProfileEnum
  ];
  @override
  final String wireName =
      'UserSettingGet200ResponseDataShareLinksInProfileEnum';

  @override
  Object serialize(Serializers serializers,
          UserSettingGet200ResponseDataShareLinksInProfileEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserSettingGet200ResponseDataShareLinksInProfileEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserSettingGet200ResponseDataShareLinksInProfileEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UserSettingGet200ResponseData extends UserSettingGet200ResponseData {
  @override
  final DateTime? groupExpires;
  @override
  final BuiltList<UserSettingGet200ResponseDataOpenIdInner>? openId;
  @override
  final bool versionRetentionEnabled;
  @override
  final BuiltList<String>? versionRetentionExt;
  @override
  final int? versionRetentionMax;
  @override
  final bool passwordless;
  @override
  final bool twoFaEnabled;
  @override
  final BuiltList<Passkey>? passkeys;
  @override
  final BuiltList<UserSettingGet200ResponseDataLoginActivityInner>?
      loginActivity;
  @override
  final BuiltList<UserSettingGet200ResponseDataStoragePacksInner> storagePacks;
  @override
  final int credit;
  @override
  final bool disableViewSync;
  @override
  final UserSettingGet200ResponseDataShareLinksInProfileEnum?
      shareLinksInProfile;

  factory _$UserSettingGet200ResponseData(
          [void Function(UserSettingGet200ResponseDataBuilder)? updates]) =>
      (UserSettingGet200ResponseDataBuilder()..update(updates))._build();

  _$UserSettingGet200ResponseData._(
      {this.groupExpires,
      this.openId,
      required this.versionRetentionEnabled,
      this.versionRetentionExt,
      this.versionRetentionMax,
      required this.passwordless,
      required this.twoFaEnabled,
      this.passkeys,
      this.loginActivity,
      required this.storagePacks,
      required this.credit,
      required this.disableViewSync,
      this.shareLinksInProfile})
      : super._();
  @override
  UserSettingGet200ResponseData rebuild(
          void Function(UserSettingGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSettingGet200ResponseDataBuilder toBuilder() =>
      UserSettingGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSettingGet200ResponseData &&
        groupExpires == other.groupExpires &&
        openId == other.openId &&
        versionRetentionEnabled == other.versionRetentionEnabled &&
        versionRetentionExt == other.versionRetentionExt &&
        versionRetentionMax == other.versionRetentionMax &&
        passwordless == other.passwordless &&
        twoFaEnabled == other.twoFaEnabled &&
        passkeys == other.passkeys &&
        loginActivity == other.loginActivity &&
        storagePacks == other.storagePacks &&
        credit == other.credit &&
        disableViewSync == other.disableViewSync &&
        shareLinksInProfile == other.shareLinksInProfile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupExpires.hashCode);
    _$hash = $jc(_$hash, openId.hashCode);
    _$hash = $jc(_$hash, versionRetentionEnabled.hashCode);
    _$hash = $jc(_$hash, versionRetentionExt.hashCode);
    _$hash = $jc(_$hash, versionRetentionMax.hashCode);
    _$hash = $jc(_$hash, passwordless.hashCode);
    _$hash = $jc(_$hash, twoFaEnabled.hashCode);
    _$hash = $jc(_$hash, passkeys.hashCode);
    _$hash = $jc(_$hash, loginActivity.hashCode);
    _$hash = $jc(_$hash, storagePacks.hashCode);
    _$hash = $jc(_$hash, credit.hashCode);
    _$hash = $jc(_$hash, disableViewSync.hashCode);
    _$hash = $jc(_$hash, shareLinksInProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserSettingGet200ResponseData')
          ..add('groupExpires', groupExpires)
          ..add('openId', openId)
          ..add('versionRetentionEnabled', versionRetentionEnabled)
          ..add('versionRetentionExt', versionRetentionExt)
          ..add('versionRetentionMax', versionRetentionMax)
          ..add('passwordless', passwordless)
          ..add('twoFaEnabled', twoFaEnabled)
          ..add('passkeys', passkeys)
          ..add('loginActivity', loginActivity)
          ..add('storagePacks', storagePacks)
          ..add('credit', credit)
          ..add('disableViewSync', disableViewSync)
          ..add('shareLinksInProfile', shareLinksInProfile))
        .toString();
  }
}

class UserSettingGet200ResponseDataBuilder
    implements
        Builder<UserSettingGet200ResponseData,
            UserSettingGet200ResponseDataBuilder> {
  _$UserSettingGet200ResponseData? _$v;

  DateTime? _groupExpires;
  DateTime? get groupExpires => _$this._groupExpires;
  set groupExpires(DateTime? groupExpires) =>
      _$this._groupExpires = groupExpires;

  ListBuilder<UserSettingGet200ResponseDataOpenIdInner>? _openId;
  ListBuilder<UserSettingGet200ResponseDataOpenIdInner> get openId =>
      _$this._openId ??=
          ListBuilder<UserSettingGet200ResponseDataOpenIdInner>();
  set openId(ListBuilder<UserSettingGet200ResponseDataOpenIdInner>? openId) =>
      _$this._openId = openId;

  bool? _versionRetentionEnabled;
  bool? get versionRetentionEnabled => _$this._versionRetentionEnabled;
  set versionRetentionEnabled(bool? versionRetentionEnabled) =>
      _$this._versionRetentionEnabled = versionRetentionEnabled;

  ListBuilder<String>? _versionRetentionExt;
  ListBuilder<String> get versionRetentionExt =>
      _$this._versionRetentionExt ??= ListBuilder<String>();
  set versionRetentionExt(ListBuilder<String>? versionRetentionExt) =>
      _$this._versionRetentionExt = versionRetentionExt;

  int? _versionRetentionMax;
  int? get versionRetentionMax => _$this._versionRetentionMax;
  set versionRetentionMax(int? versionRetentionMax) =>
      _$this._versionRetentionMax = versionRetentionMax;

  bool? _passwordless;
  bool? get passwordless => _$this._passwordless;
  set passwordless(bool? passwordless) => _$this._passwordless = passwordless;

  bool? _twoFaEnabled;
  bool? get twoFaEnabled => _$this._twoFaEnabled;
  set twoFaEnabled(bool? twoFaEnabled) => _$this._twoFaEnabled = twoFaEnabled;

  ListBuilder<Passkey>? _passkeys;
  ListBuilder<Passkey> get passkeys =>
      _$this._passkeys ??= ListBuilder<Passkey>();
  set passkeys(ListBuilder<Passkey>? passkeys) => _$this._passkeys = passkeys;

  ListBuilder<UserSettingGet200ResponseDataLoginActivityInner>? _loginActivity;
  ListBuilder<UserSettingGet200ResponseDataLoginActivityInner>
      get loginActivity => _$this._loginActivity ??=
          ListBuilder<UserSettingGet200ResponseDataLoginActivityInner>();
  set loginActivity(
          ListBuilder<UserSettingGet200ResponseDataLoginActivityInner>?
              loginActivity) =>
      _$this._loginActivity = loginActivity;

  ListBuilder<UserSettingGet200ResponseDataStoragePacksInner>? _storagePacks;
  ListBuilder<UserSettingGet200ResponseDataStoragePacksInner>
      get storagePacks => _$this._storagePacks ??=
          ListBuilder<UserSettingGet200ResponseDataStoragePacksInner>();
  set storagePacks(
          ListBuilder<UserSettingGet200ResponseDataStoragePacksInner>?
              storagePacks) =>
      _$this._storagePacks = storagePacks;

  int? _credit;
  int? get credit => _$this._credit;
  set credit(int? credit) => _$this._credit = credit;

  bool? _disableViewSync;
  bool? get disableViewSync => _$this._disableViewSync;
  set disableViewSync(bool? disableViewSync) =>
      _$this._disableViewSync = disableViewSync;

  UserSettingGet200ResponseDataShareLinksInProfileEnum? _shareLinksInProfile;
  UserSettingGet200ResponseDataShareLinksInProfileEnum?
      get shareLinksInProfile => _$this._shareLinksInProfile;
  set shareLinksInProfile(
          UserSettingGet200ResponseDataShareLinksInProfileEnum?
              shareLinksInProfile) =>
      _$this._shareLinksInProfile = shareLinksInProfile;

  UserSettingGet200ResponseDataBuilder() {
    UserSettingGet200ResponseData._defaults(this);
  }

  UserSettingGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupExpires = $v.groupExpires;
      _openId = $v.openId?.toBuilder();
      _versionRetentionEnabled = $v.versionRetentionEnabled;
      _versionRetentionExt = $v.versionRetentionExt?.toBuilder();
      _versionRetentionMax = $v.versionRetentionMax;
      _passwordless = $v.passwordless;
      _twoFaEnabled = $v.twoFaEnabled;
      _passkeys = $v.passkeys?.toBuilder();
      _loginActivity = $v.loginActivity?.toBuilder();
      _storagePacks = $v.storagePacks.toBuilder();
      _credit = $v.credit;
      _disableViewSync = $v.disableViewSync;
      _shareLinksInProfile = $v.shareLinksInProfile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSettingGet200ResponseData other) {
    _$v = other as _$UserSettingGet200ResponseData;
  }

  @override
  void update(void Function(UserSettingGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSettingGet200ResponseData build() => _build();

  _$UserSettingGet200ResponseData _build() {
    _$UserSettingGet200ResponseData _$result;
    try {
      _$result = _$v ??
          _$UserSettingGet200ResponseData._(
            groupExpires: groupExpires,
            openId: _openId?.build(),
            versionRetentionEnabled: BuiltValueNullFieldError.checkNotNull(
                versionRetentionEnabled,
                r'UserSettingGet200ResponseData',
                'versionRetentionEnabled'),
            versionRetentionExt: _versionRetentionExt?.build(),
            versionRetentionMax: versionRetentionMax,
            passwordless: BuiltValueNullFieldError.checkNotNull(
                passwordless, r'UserSettingGet200ResponseData', 'passwordless'),
            twoFaEnabled: BuiltValueNullFieldError.checkNotNull(
                twoFaEnabled, r'UserSettingGet200ResponseData', 'twoFaEnabled'),
            passkeys: _passkeys?.build(),
            loginActivity: _loginActivity?.build(),
            storagePacks: storagePacks.build(),
            credit: BuiltValueNullFieldError.checkNotNull(
                credit, r'UserSettingGet200ResponseData', 'credit'),
            disableViewSync: BuiltValueNullFieldError.checkNotNull(
                disableViewSync,
                r'UserSettingGet200ResponseData',
                'disableViewSync'),
            shareLinksInProfile: shareLinksInProfile,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'openId';
        _openId?.build();

        _$failedField = 'versionRetentionExt';
        _versionRetentionExt?.build();

        _$failedField = 'passkeys';
        _passkeys?.build();
        _$failedField = 'loginActivity';
        _loginActivity?.build();
        _$failedField = 'storagePacks';
        storagePacks.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserSettingGet200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
