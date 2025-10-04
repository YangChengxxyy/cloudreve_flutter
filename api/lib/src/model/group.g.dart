// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Group extends Group {
  @override
  final String id;
  @override
  final String name;
  @override
  final String permission;
  @override
  final int directLinkBatchSize;
  @override
  final int trashRetention;

  factory _$Group([void Function(GroupBuilder)? updates]) =>
      (GroupBuilder()..update(updates))._build();

  _$Group._(
      {required this.id,
      required this.name,
      required this.permission,
      required this.directLinkBatchSize,
      required this.trashRetention})
      : super._();
  @override
  Group rebuild(void Function(GroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupBuilder toBuilder() => GroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Group &&
        id == other.id &&
        name == other.name &&
        permission == other.permission &&
        directLinkBatchSize == other.directLinkBatchSize &&
        trashRetention == other.trashRetention;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, permission.hashCode);
    _$hash = $jc(_$hash, directLinkBatchSize.hashCode);
    _$hash = $jc(_$hash, trashRetention.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Group')
          ..add('id', id)
          ..add('name', name)
          ..add('permission', permission)
          ..add('directLinkBatchSize', directLinkBatchSize)
          ..add('trashRetention', trashRetention))
        .toString();
  }
}

class GroupBuilder implements Builder<Group, GroupBuilder> {
  _$Group? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _permission;
  String? get permission => _$this._permission;
  set permission(String? permission) => _$this._permission = permission;

  int? _directLinkBatchSize;
  int? get directLinkBatchSize => _$this._directLinkBatchSize;
  set directLinkBatchSize(int? directLinkBatchSize) =>
      _$this._directLinkBatchSize = directLinkBatchSize;

  int? _trashRetention;
  int? get trashRetention => _$this._trashRetention;
  set trashRetention(int? trashRetention) =>
      _$this._trashRetention = trashRetention;

  GroupBuilder() {
    Group._defaults(this);
  }

  GroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _permission = $v.permission;
      _directLinkBatchSize = $v.directLinkBatchSize;
      _trashRetention = $v.trashRetention;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Group other) {
    _$v = other as _$Group;
  }

  @override
  void update(void Function(GroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Group build() => _build();

  _$Group _build() {
    final _$result = _$v ??
        _$Group._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Group', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(name, r'Group', 'name'),
          permission: BuiltValueNullFieldError.checkNotNull(
              permission, r'Group', 'permission'),
          directLinkBatchSize: BuiltValueNullFieldError.checkNotNull(
              directLinkBatchSize, r'Group', 'directLinkBatchSize'),
          trashRetention: BuiltValueNullFieldError.checkNotNull(
              trashRetention, r'Group', 'trashRetention'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
