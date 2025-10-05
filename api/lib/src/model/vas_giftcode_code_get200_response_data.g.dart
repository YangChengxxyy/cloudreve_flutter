// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vas_giftcode_code_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VasGiftcodeCodeGet200ResponseData
    extends VasGiftcodeCodeGet200ResponseData {
  @override
  final String? name;
  @override
  final num? qyt;
  @override
  final int? duration;

  factory _$VasGiftcodeCodeGet200ResponseData(
          [void Function(VasGiftcodeCodeGet200ResponseDataBuilder)? updates]) =>
      (VasGiftcodeCodeGet200ResponseDataBuilder()..update(updates))._build();

  _$VasGiftcodeCodeGet200ResponseData._({this.name, this.qyt, this.duration})
      : super._();
  @override
  VasGiftcodeCodeGet200ResponseData rebuild(
          void Function(VasGiftcodeCodeGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VasGiftcodeCodeGet200ResponseDataBuilder toBuilder() =>
      VasGiftcodeCodeGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VasGiftcodeCodeGet200ResponseData &&
        name == other.name &&
        qyt == other.qyt &&
        duration == other.duration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, qyt.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VasGiftcodeCodeGet200ResponseData')
          ..add('name', name)
          ..add('qyt', qyt)
          ..add('duration', duration))
        .toString();
  }
}

class VasGiftcodeCodeGet200ResponseDataBuilder
    implements
        Builder<VasGiftcodeCodeGet200ResponseData,
            VasGiftcodeCodeGet200ResponseDataBuilder> {
  _$VasGiftcodeCodeGet200ResponseData? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  num? _qyt;
  num? get qyt => _$this._qyt;
  set qyt(num? qyt) => _$this._qyt = qyt;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  VasGiftcodeCodeGet200ResponseDataBuilder() {
    VasGiftcodeCodeGet200ResponseData._defaults(this);
  }

  VasGiftcodeCodeGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _qyt = $v.qyt;
      _duration = $v.duration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VasGiftcodeCodeGet200ResponseData other) {
    _$v = other as _$VasGiftcodeCodeGet200ResponseData;
  }

  @override
  void update(
      void Function(VasGiftcodeCodeGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VasGiftcodeCodeGet200ResponseData build() => _build();

  _$VasGiftcodeCodeGet200ResponseData _build() {
    final _$result = _$v ??
        _$VasGiftcodeCodeGet200ResponseData._(
          name: name,
          qyt: qyt,
          duration: duration,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
