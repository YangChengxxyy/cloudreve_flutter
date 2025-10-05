// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_created_by_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityCreatedByGroup extends EntityCreatedByGroup {
  @override
  final String? id;
  @override
  final String? name;

  factory _$EntityCreatedByGroup(
          [void Function(EntityCreatedByGroupBuilder)? updates]) =>
      (EntityCreatedByGroupBuilder()..update(updates))._build();

  _$EntityCreatedByGroup._({this.id, this.name}) : super._();
  @override
  EntityCreatedByGroup rebuild(
          void Function(EntityCreatedByGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityCreatedByGroupBuilder toBuilder() =>
      EntityCreatedByGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityCreatedByGroup &&
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
    return (newBuiltValueToStringHelper(r'EntityCreatedByGroup')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class EntityCreatedByGroupBuilder
    implements Builder<EntityCreatedByGroup, EntityCreatedByGroupBuilder> {
  _$EntityCreatedByGroup? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  EntityCreatedByGroupBuilder() {
    EntityCreatedByGroup._defaults(this);
  }

  EntityCreatedByGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityCreatedByGroup other) {
    _$v = other as _$EntityCreatedByGroup;
  }

  @override
  void update(void Function(EntityCreatedByGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityCreatedByGroup build() => _build();

  _$EntityCreatedByGroup _build() {
    final _$result = _$v ??
        _$EntityCreatedByGroup._(
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
