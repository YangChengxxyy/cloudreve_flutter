// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_user_id_get200_response_data_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserInfoUserIdGet200ResponseDataGroup
    extends UserInfoUserIdGet200ResponseDataGroup {
  @override
  final String? id;
  @override
  final String? name;

  factory _$UserInfoUserIdGet200ResponseDataGroup(
          [void Function(UserInfoUserIdGet200ResponseDataGroupBuilder)?
              updates]) =>
      (UserInfoUserIdGet200ResponseDataGroupBuilder()..update(updates))
          ._build();

  _$UserInfoUserIdGet200ResponseDataGroup._({this.id, this.name}) : super._();
  @override
  UserInfoUserIdGet200ResponseDataGroup rebuild(
          void Function(UserInfoUserIdGet200ResponseDataGroupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoUserIdGet200ResponseDataGroupBuilder toBuilder() =>
      UserInfoUserIdGet200ResponseDataGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoUserIdGet200ResponseDataGroup &&
        id == other.id &&
        name == other.name;
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
    return (newBuiltValueToStringHelper(
            r'UserInfoUserIdGet200ResponseDataGroup')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class UserInfoUserIdGet200ResponseDataGroupBuilder
    implements
        Builder<UserInfoUserIdGet200ResponseDataGroup,
            UserInfoUserIdGet200ResponseDataGroupBuilder> {
  _$UserInfoUserIdGet200ResponseDataGroup? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UserInfoUserIdGet200ResponseDataGroupBuilder() {
    UserInfoUserIdGet200ResponseDataGroup._defaults(this);
  }

  UserInfoUserIdGet200ResponseDataGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfoUserIdGet200ResponseDataGroup other) {
    _$v = other as _$UserInfoUserIdGet200ResponseDataGroup;
  }

  @override
  void update(
      void Function(UserInfoUserIdGet200ResponseDataGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInfoUserIdGet200ResponseDataGroup build() => _build();

  _$UserInfoUserIdGet200ResponseDataGroup _build() {
    final _$result = _$v ??
        _$UserInfoUserIdGet200ResponseDataGroup._(
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
