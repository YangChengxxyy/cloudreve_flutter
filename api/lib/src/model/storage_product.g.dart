// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StorageProduct extends StorageProduct {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? size;
  @override
  final int? time;
  @override
  final int? price;
  @override
  final String? chip;
  @override
  final int? points;

  factory _$StorageProduct([void Function(StorageProductBuilder)? updates]) =>
      (StorageProductBuilder()..update(updates))._build();

  _$StorageProduct._(
      {this.id,
      this.name,
      this.size,
      this.time,
      this.price,
      this.chip,
      this.points})
      : super._();
  @override
  StorageProduct rebuild(void Function(StorageProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StorageProductBuilder toBuilder() => StorageProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StorageProduct &&
        id == other.id &&
        name == other.name &&
        size == other.size &&
        time == other.time &&
        price == other.price &&
        chip == other.chip &&
        points == other.points;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, chip.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StorageProduct')
          ..add('id', id)
          ..add('name', name)
          ..add('size', size)
          ..add('time', time)
          ..add('price', price)
          ..add('chip', chip)
          ..add('points', points))
        .toString();
  }
}

class StorageProductBuilder
    implements Builder<StorageProduct, StorageProductBuilder> {
  _$StorageProduct? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

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

  StorageProductBuilder() {
    StorageProduct._defaults(this);
  }

  StorageProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _size = $v.size;
      _time = $v.time;
      _price = $v.price;
      _chip = $v.chip;
      _points = $v.points;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StorageProduct other) {
    _$v = other as _$StorageProduct;
  }

  @override
  void update(void Function(StorageProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StorageProduct build() => _build();

  _$StorageProduct _build() {
    final _$result = _$v ??
        _$StorageProduct._(
          id: id,
          name: name,
          size: size,
          time: time,
          price: price,
          chip: chip,
          points: points,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
