// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_capacity_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserCapacityGet200ResponseData extends UserCapacityGet200ResponseData {
  @override
  final int? total;
  @override
  final int? used;
  @override
  final int? storagePackTotal;

  factory _$UserCapacityGet200ResponseData(
          [void Function(UserCapacityGet200ResponseDataBuilder)? updates]) =>
      (UserCapacityGet200ResponseDataBuilder()..update(updates))._build();

  _$UserCapacityGet200ResponseData._(
      {this.total, this.used, this.storagePackTotal})
      : super._();
  @override
  UserCapacityGet200ResponseData rebuild(
          void Function(UserCapacityGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCapacityGet200ResponseDataBuilder toBuilder() =>
      UserCapacityGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCapacityGet200ResponseData &&
        total == other.total &&
        used == other.used &&
        storagePackTotal == other.storagePackTotal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, used.hashCode);
    _$hash = $jc(_$hash, storagePackTotal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserCapacityGet200ResponseData')
          ..add('total', total)
          ..add('used', used)
          ..add('storagePackTotal', storagePackTotal))
        .toString();
  }
}

class UserCapacityGet200ResponseDataBuilder
    implements
        Builder<UserCapacityGet200ResponseData,
            UserCapacityGet200ResponseDataBuilder> {
  _$UserCapacityGet200ResponseData? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _used;
  int? get used => _$this._used;
  set used(int? used) => _$this._used = used;

  int? _storagePackTotal;
  int? get storagePackTotal => _$this._storagePackTotal;
  set storagePackTotal(int? storagePackTotal) =>
      _$this._storagePackTotal = storagePackTotal;

  UserCapacityGet200ResponseDataBuilder() {
    UserCapacityGet200ResponseData._defaults(this);
  }

  UserCapacityGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _used = $v.used;
      _storagePackTotal = $v.storagePackTotal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCapacityGet200ResponseData other) {
    _$v = other as _$UserCapacityGet200ResponseData;
  }

  @override
  void update(void Function(UserCapacityGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCapacityGet200ResponseData build() => _build();

  _$UserCapacityGet200ResponseData _build() {
    final _$result = _$v ??
        _$UserCapacityGet200ResponseData._(
          total: total,
          used: used,
          storagePackTotal: storagePackTotal,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
