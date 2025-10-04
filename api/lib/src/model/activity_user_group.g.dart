// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_user_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActivityUserGroup extends ActivityUserGroup {
  @override
  final String id;
  @override
  final String name;

  factory _$ActivityUserGroup(
          [void Function(ActivityUserGroupBuilder)? updates]) =>
      (ActivityUserGroupBuilder()..update(updates))._build();

  _$ActivityUserGroup._({required this.id, required this.name}) : super._();
  @override
  ActivityUserGroup rebuild(void Function(ActivityUserGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityUserGroupBuilder toBuilder() =>
      ActivityUserGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityUserGroup && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivityUserGroup')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ActivityUserGroupBuilder
    implements Builder<ActivityUserGroup, ActivityUserGroupBuilder> {
  _$ActivityUserGroup? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ActivityUserGroupBuilder() {
    ActivityUserGroup._defaults(this);
  }

  ActivityUserGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivityUserGroup other) {
    _$v = other as _$ActivityUserGroup;
  }

  @override
  void update(void Function(ActivityUserGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivityUserGroup build() => _build();

  _$ActivityUserGroup _build() {
    final _$result = _$v ??
        _$ActivityUserGroup._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ActivityUserGroup', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ActivityUserGroup', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
