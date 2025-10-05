// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_list_get200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupListGet200ResponseDataInner
    extends GroupListGet200ResponseDataInner {
  @override
  final String? id;
  @override
  final String? name;

  factory _$GroupListGet200ResponseDataInner(
          [void Function(GroupListGet200ResponseDataInnerBuilder)? updates]) =>
      (GroupListGet200ResponseDataInnerBuilder()..update(updates))._build();

  _$GroupListGet200ResponseDataInner._({this.id, this.name}) : super._();
  @override
  GroupListGet200ResponseDataInner rebuild(
          void Function(GroupListGet200ResponseDataInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupListGet200ResponseDataInnerBuilder toBuilder() =>
      GroupListGet200ResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupListGet200ResponseDataInner &&
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
    return (newBuiltValueToStringHelper(r'GroupListGet200ResponseDataInner')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GroupListGet200ResponseDataInnerBuilder
    implements
        Builder<GroupListGet200ResponseDataInner,
            GroupListGet200ResponseDataInnerBuilder> {
  _$GroupListGet200ResponseDataInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GroupListGet200ResponseDataInnerBuilder() {
    GroupListGet200ResponseDataInner._defaults(this);
  }

  GroupListGet200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupListGet200ResponseDataInner other) {
    _$v = other as _$GroupListGet200ResponseDataInner;
  }

  @override
  void update(void Function(GroupListGet200ResponseDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupListGet200ResponseDataInner build() => _build();

  _$GroupListGet200ResponseDataInner _build() {
    final _$result = _$v ??
        _$GroupListGet200ResponseDataInner._(
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
