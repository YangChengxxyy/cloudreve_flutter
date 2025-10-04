// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_setting_patch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSettingPatchRequest extends UserSettingPatchRequest {
  @override
  final String? nick;
  @override
  final bool? groupExpires;
  @override
  final String? language;
  @override
  final String? preferredTheme;
  @override
  final bool? versionRetentionEnabled;
  @override
  final BuiltList<String>? versionRetentionExt;
  @override
  final int? versionRetentionMax;
  @override
  final String? currentPassword;
  @override
  final String? newPassword;
  @override
  final bool? twoFaEnabled;
  @override
  final String? twoFaCode;
  @override
  final bool? disableViewSync;

  factory _$UserSettingPatchRequest(
          [void Function(UserSettingPatchRequestBuilder)? updates]) =>
      (UserSettingPatchRequestBuilder()..update(updates))._build();

  _$UserSettingPatchRequest._(
      {this.nick,
      this.groupExpires,
      this.language,
      this.preferredTheme,
      this.versionRetentionEnabled,
      this.versionRetentionExt,
      this.versionRetentionMax,
      this.currentPassword,
      this.newPassword,
      this.twoFaEnabled,
      this.twoFaCode,
      this.disableViewSync})
      : super._();
  @override
  UserSettingPatchRequest rebuild(
          void Function(UserSettingPatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSettingPatchRequestBuilder toBuilder() =>
      UserSettingPatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSettingPatchRequest &&
        nick == other.nick &&
        groupExpires == other.groupExpires &&
        language == other.language &&
        preferredTheme == other.preferredTheme &&
        versionRetentionEnabled == other.versionRetentionEnabled &&
        versionRetentionExt == other.versionRetentionExt &&
        versionRetentionMax == other.versionRetentionMax &&
        currentPassword == other.currentPassword &&
        newPassword == other.newPassword &&
        twoFaEnabled == other.twoFaEnabled &&
        twoFaCode == other.twoFaCode &&
        disableViewSync == other.disableViewSync;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nick.hashCode);
    _$hash = $jc(_$hash, groupExpires.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, preferredTheme.hashCode);
    _$hash = $jc(_$hash, versionRetentionEnabled.hashCode);
    _$hash = $jc(_$hash, versionRetentionExt.hashCode);
    _$hash = $jc(_$hash, versionRetentionMax.hashCode);
    _$hash = $jc(_$hash, currentPassword.hashCode);
    _$hash = $jc(_$hash, newPassword.hashCode);
    _$hash = $jc(_$hash, twoFaEnabled.hashCode);
    _$hash = $jc(_$hash, twoFaCode.hashCode);
    _$hash = $jc(_$hash, disableViewSync.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserSettingPatchRequest')
          ..add('nick', nick)
          ..add('groupExpires', groupExpires)
          ..add('language', language)
          ..add('preferredTheme', preferredTheme)
          ..add('versionRetentionEnabled', versionRetentionEnabled)
          ..add('versionRetentionExt', versionRetentionExt)
          ..add('versionRetentionMax', versionRetentionMax)
          ..add('currentPassword', currentPassword)
          ..add('newPassword', newPassword)
          ..add('twoFaEnabled', twoFaEnabled)
          ..add('twoFaCode', twoFaCode)
          ..add('disableViewSync', disableViewSync))
        .toString();
  }
}

class UserSettingPatchRequestBuilder
    implements
        Builder<UserSettingPatchRequest, UserSettingPatchRequestBuilder> {
  _$UserSettingPatchRequest? _$v;

  String? _nick;
  String? get nick => _$this._nick;
  set nick(String? nick) => _$this._nick = nick;

  bool? _groupExpires;
  bool? get groupExpires => _$this._groupExpires;
  set groupExpires(bool? groupExpires) => _$this._groupExpires = groupExpires;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _preferredTheme;
  String? get preferredTheme => _$this._preferredTheme;
  set preferredTheme(String? preferredTheme) =>
      _$this._preferredTheme = preferredTheme;

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

  String? _currentPassword;
  String? get currentPassword => _$this._currentPassword;
  set currentPassword(String? currentPassword) =>
      _$this._currentPassword = currentPassword;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  bool? _twoFaEnabled;
  bool? get twoFaEnabled => _$this._twoFaEnabled;
  set twoFaEnabled(bool? twoFaEnabled) => _$this._twoFaEnabled = twoFaEnabled;

  String? _twoFaCode;
  String? get twoFaCode => _$this._twoFaCode;
  set twoFaCode(String? twoFaCode) => _$this._twoFaCode = twoFaCode;

  bool? _disableViewSync;
  bool? get disableViewSync => _$this._disableViewSync;
  set disableViewSync(bool? disableViewSync) =>
      _$this._disableViewSync = disableViewSync;

  UserSettingPatchRequestBuilder() {
    UserSettingPatchRequest._defaults(this);
  }

  UserSettingPatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nick = $v.nick;
      _groupExpires = $v.groupExpires;
      _language = $v.language;
      _preferredTheme = $v.preferredTheme;
      _versionRetentionEnabled = $v.versionRetentionEnabled;
      _versionRetentionExt = $v.versionRetentionExt?.toBuilder();
      _versionRetentionMax = $v.versionRetentionMax;
      _currentPassword = $v.currentPassword;
      _newPassword = $v.newPassword;
      _twoFaEnabled = $v.twoFaEnabled;
      _twoFaCode = $v.twoFaCode;
      _disableViewSync = $v.disableViewSync;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSettingPatchRequest other) {
    _$v = other as _$UserSettingPatchRequest;
  }

  @override
  void update(void Function(UserSettingPatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSettingPatchRequest build() => _build();

  _$UserSettingPatchRequest _build() {
    _$UserSettingPatchRequest _$result;
    try {
      _$result = _$v ??
          _$UserSettingPatchRequest._(
            nick: nick,
            groupExpires: groupExpires,
            language: language,
            preferredTheme: preferredTheme,
            versionRetentionEnabled: versionRetentionEnabled,
            versionRetentionExt: _versionRetentionExt?.build(),
            versionRetentionMax: versionRetentionMax,
            currentPassword: currentPassword,
            newPassword: newPassword,
            twoFaEnabled: twoFaEnabled,
            twoFaCode: twoFaCode,
            disableViewSync: disableViewSync,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'versionRetentionExt';
        _versionRetentionExt?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserSettingPatchRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
