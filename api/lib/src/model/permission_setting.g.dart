// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_setting.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionSetting extends PermissionSetting {
  @override
  final BuiltMap<String, String>? userExplicit;
  @override
  final BuiltMap<String, String>? groupExplicit;
  @override
  final String? sameGroup;
  @override
  final String? other;
  @override
  final String? anonymous;
  @override
  final String? everyone;

  factory _$PermissionSetting(
          [void Function(PermissionSettingBuilder)? updates]) =>
      (PermissionSettingBuilder()..update(updates))._build();

  _$PermissionSetting._(
      {this.userExplicit,
      this.groupExplicit,
      this.sameGroup,
      this.other,
      this.anonymous,
      this.everyone})
      : super._();
  @override
  PermissionSetting rebuild(void Function(PermissionSettingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionSettingBuilder toBuilder() =>
      PermissionSettingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionSetting &&
        userExplicit == other.userExplicit &&
        groupExplicit == other.groupExplicit &&
        sameGroup == other.sameGroup &&
        this.other == other.other &&
        anonymous == other.anonymous &&
        everyone == other.everyone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userExplicit.hashCode);
    _$hash = $jc(_$hash, groupExplicit.hashCode);
    _$hash = $jc(_$hash, sameGroup.hashCode);
    _$hash = $jc(_$hash, other.hashCode);
    _$hash = $jc(_$hash, anonymous.hashCode);
    _$hash = $jc(_$hash, everyone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PermissionSetting')
          ..add('userExplicit', userExplicit)
          ..add('groupExplicit', groupExplicit)
          ..add('sameGroup', sameGroup)
          ..add('other', other)
          ..add('anonymous', anonymous)
          ..add('everyone', everyone))
        .toString();
  }
}

class PermissionSettingBuilder
    implements Builder<PermissionSetting, PermissionSettingBuilder> {
  _$PermissionSetting? _$v;

  MapBuilder<String, String>? _userExplicit;
  MapBuilder<String, String> get userExplicit =>
      _$this._userExplicit ??= MapBuilder<String, String>();
  set userExplicit(MapBuilder<String, String>? userExplicit) =>
      _$this._userExplicit = userExplicit;

  MapBuilder<String, String>? _groupExplicit;
  MapBuilder<String, String> get groupExplicit =>
      _$this._groupExplicit ??= MapBuilder<String, String>();
  set groupExplicit(MapBuilder<String, String>? groupExplicit) =>
      _$this._groupExplicit = groupExplicit;

  String? _sameGroup;
  String? get sameGroup => _$this._sameGroup;
  set sameGroup(String? sameGroup) => _$this._sameGroup = sameGroup;

  String? _other;
  String? get other => _$this._other;
  set other(String? other) => _$this._other = other;

  String? _anonymous;
  String? get anonymous => _$this._anonymous;
  set anonymous(String? anonymous) => _$this._anonymous = anonymous;

  String? _everyone;
  String? get everyone => _$this._everyone;
  set everyone(String? everyone) => _$this._everyone = everyone;

  PermissionSettingBuilder() {
    PermissionSetting._defaults(this);
  }

  PermissionSettingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userExplicit = $v.userExplicit?.toBuilder();
      _groupExplicit = $v.groupExplicit?.toBuilder();
      _sameGroup = $v.sameGroup;
      _other = $v.other;
      _anonymous = $v.anonymous;
      _everyone = $v.everyone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionSetting other) {
    _$v = other as _$PermissionSetting;
  }

  @override
  void update(void Function(PermissionSettingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionSetting build() => _build();

  _$PermissionSetting _build() {
    _$PermissionSetting _$result;
    try {
      _$result = _$v ??
          _$PermissionSetting._(
            userExplicit: _userExplicit?.build(),
            groupExplicit: _groupExplicit?.build(),
            sameGroup: sameGroup,
            other: other,
            anonymous: anonymous,
            everyone: everyone,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userExplicit';
        _userExplicit?.build();
        _$failedField = 'groupExplicit';
        _groupExplicit?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PermissionSetting', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
