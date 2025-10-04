// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_get200_response_data_inner_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSearchGet200ResponseDataInnerGroup
    extends UserSearchGet200ResponseDataInnerGroup {
  @override
  final String id;
  @override
  final String name;

  factory _$UserSearchGet200ResponseDataInnerGroup(
          [void Function(UserSearchGet200ResponseDataInnerGroupBuilder)?
              updates]) =>
      (UserSearchGet200ResponseDataInnerGroupBuilder()..update(updates))
          ._build();

  _$UserSearchGet200ResponseDataInnerGroup._(
      {required this.id, required this.name})
      : super._();
  @override
  UserSearchGet200ResponseDataInnerGroup rebuild(
          void Function(UserSearchGet200ResponseDataInnerGroupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSearchGet200ResponseDataInnerGroupBuilder toBuilder() =>
      UserSearchGet200ResponseDataInnerGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSearchGet200ResponseDataInnerGroup &&
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
            r'UserSearchGet200ResponseDataInnerGroup')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class UserSearchGet200ResponseDataInnerGroupBuilder
    implements
        Builder<UserSearchGet200ResponseDataInnerGroup,
            UserSearchGet200ResponseDataInnerGroupBuilder> {
  _$UserSearchGet200ResponseDataInnerGroup? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UserSearchGet200ResponseDataInnerGroupBuilder() {
    UserSearchGet200ResponseDataInnerGroup._defaults(this);
  }

  UserSearchGet200ResponseDataInnerGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSearchGet200ResponseDataInnerGroup other) {
    _$v = other as _$UserSearchGet200ResponseDataInnerGroup;
  }

  @override
  void update(
      void Function(UserSearchGet200ResponseDataInnerGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSearchGet200ResponseDataInnerGroup build() => _build();

  _$UserSearchGet200ResponseDataInnerGroup _build() {
    final _$result = _$v ??
        _$UserSearchGet200ResponseDataInnerGroup._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'UserSearchGet200ResponseDataInnerGroup', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'UserSearchGet200ResponseDataInnerGroup', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
