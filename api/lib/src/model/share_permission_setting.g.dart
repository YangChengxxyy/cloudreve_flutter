// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_permission_setting.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SharePermissionSetting extends SharePermissionSetting {
  @override
  final JsonObject? sameGroup;
  @override
  final String? everyone;
  @override
  final JsonObject? other;
  @override
  final String? anonymous;
  @override
  final JsonObject? groupExplicit;
  @override
  final JsonObject? userExplicit;

  factory _$SharePermissionSetting(
          [void Function(SharePermissionSettingBuilder)? updates]) =>
      (SharePermissionSettingBuilder()..update(updates))._build();

  _$SharePermissionSetting._(
      {this.sameGroup,
      this.everyone,
      this.other,
      this.anonymous,
      this.groupExplicit,
      this.userExplicit})
      : super._();
  @override
  SharePermissionSetting rebuild(
          void Function(SharePermissionSettingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SharePermissionSettingBuilder toBuilder() =>
      SharePermissionSettingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SharePermissionSetting &&
        sameGroup == other.sameGroup &&
        everyone == other.everyone &&
        this.other == other.other &&
        anonymous == other.anonymous &&
        groupExplicit == other.groupExplicit &&
        userExplicit == other.userExplicit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sameGroup.hashCode);
    _$hash = $jc(_$hash, everyone.hashCode);
    _$hash = $jc(_$hash, other.hashCode);
    _$hash = $jc(_$hash, anonymous.hashCode);
    _$hash = $jc(_$hash, groupExplicit.hashCode);
    _$hash = $jc(_$hash, userExplicit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SharePermissionSetting')
          ..add('sameGroup', sameGroup)
          ..add('everyone', everyone)
          ..add('other', other)
          ..add('anonymous', anonymous)
          ..add('groupExplicit', groupExplicit)
          ..add('userExplicit', userExplicit))
        .toString();
  }
}

class SharePermissionSettingBuilder
    implements Builder<SharePermissionSetting, SharePermissionSettingBuilder> {
  _$SharePermissionSetting? _$v;

  JsonObject? _sameGroup;
  JsonObject? get sameGroup => _$this._sameGroup;
  set sameGroup(JsonObject? sameGroup) => _$this._sameGroup = sameGroup;

  String? _everyone;
  String? get everyone => _$this._everyone;
  set everyone(String? everyone) => _$this._everyone = everyone;

  JsonObject? _other;
  JsonObject? get other => _$this._other;
  set other(JsonObject? other) => _$this._other = other;

  String? _anonymous;
  String? get anonymous => _$this._anonymous;
  set anonymous(String? anonymous) => _$this._anonymous = anonymous;

  JsonObject? _groupExplicit;
  JsonObject? get groupExplicit => _$this._groupExplicit;
  set groupExplicit(JsonObject? groupExplicit) =>
      _$this._groupExplicit = groupExplicit;

  JsonObject? _userExplicit;
  JsonObject? get userExplicit => _$this._userExplicit;
  set userExplicit(JsonObject? userExplicit) =>
      _$this._userExplicit = userExplicit;

  SharePermissionSettingBuilder() {
    SharePermissionSetting._defaults(this);
  }

  SharePermissionSettingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sameGroup = $v.sameGroup;
      _everyone = $v.everyone;
      _other = $v.other;
      _anonymous = $v.anonymous;
      _groupExplicit = $v.groupExplicit;
      _userExplicit = $v.userExplicit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SharePermissionSetting other) {
    _$v = other as _$SharePermissionSetting;
  }

  @override
  void update(void Function(SharePermissionSettingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SharePermissionSetting build() => _build();

  _$SharePermissionSetting _build() {
    final _$result = _$v ??
        _$SharePermissionSetting._(
          sameGroup: sameGroup,
          everyone: everyone,
          other: other,
          anonymous: anonymous,
          groupExplicit: groupExplicit,
          userExplicit: userExplicit,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
