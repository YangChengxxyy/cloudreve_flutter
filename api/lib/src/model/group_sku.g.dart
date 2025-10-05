// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_sku.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupSKU extends GroupSKU {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? time;
  @override
  final int? price;
  @override
  final String? chip;
  @override
  final int? points;
  @override
  final BuiltList<String>? des;

  factory _$GroupSKU([void Function(GroupSKUBuilder)? updates]) =>
      (GroupSKUBuilder()..update(updates))._build();

  _$GroupSKU._(
      {this.id,
      this.name,
      this.time,
      this.price,
      this.chip,
      this.points,
      this.des})
      : super._();
  @override
  GroupSKU rebuild(void Function(GroupSKUBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupSKUBuilder toBuilder() => GroupSKUBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupSKU &&
        id == other.id &&
        name == other.name &&
        time == other.time &&
        price == other.price &&
        chip == other.chip &&
        points == other.points &&
        des == other.des;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, chip.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, des.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupSKU')
          ..add('id', id)
          ..add('name', name)
          ..add('time', time)
          ..add('price', price)
          ..add('chip', chip)
          ..add('points', points)
          ..add('des', des))
        .toString();
  }
}

class GroupSKUBuilder implements Builder<GroupSKU, GroupSKUBuilder> {
  _$GroupSKU? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _chip;
  String? get chip => _$this._chip;
  set chip(String? chip) => _$this._chip = chip;

  int? _points;
  int? get points => _$this._points;
  set points(int? points) => _$this._points = points;

  ListBuilder<String>? _des;
  ListBuilder<String> get des => _$this._des ??= ListBuilder<String>();
  set des(ListBuilder<String>? des) => _$this._des = des;

  GroupSKUBuilder() {
    GroupSKU._defaults(this);
  }

  GroupSKUBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _time = $v.time;
      _price = $v.price;
      _chip = $v.chip;
      _points = $v.points;
      _des = $v.des?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupSKU other) {
    _$v = other as _$GroupSKU;
  }

  @override
  void update(void Function(GroupSKUBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupSKU build() => _build();

  _$GroupSKU _build() {
    _$GroupSKU _$result;
    try {
      _$result = _$v ??
          _$GroupSKU._(
            id: id,
            name: name,
            time: time,
            price: price,
            chip: chip,
            points: points,
            des: _des?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'des';
        _des?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GroupSKU', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
