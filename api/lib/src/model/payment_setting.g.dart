// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_setting.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentSetting extends PaymentSetting {
  @override
  final String? currencyCode;
  @override
  final String? currencyMark;
  @override
  final int? currencyUnit;
  @override
  final BuiltList<PaymentProvider>? providers;

  factory _$PaymentSetting([void Function(PaymentSettingBuilder)? updates]) =>
      (PaymentSettingBuilder()..update(updates))._build();

  _$PaymentSetting._(
      {this.currencyCode, this.currencyMark, this.currencyUnit, this.providers})
      : super._();
  @override
  PaymentSetting rebuild(void Function(PaymentSettingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentSettingBuilder toBuilder() => PaymentSettingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentSetting &&
        currencyCode == other.currencyCode &&
        currencyMark == other.currencyMark &&
        currencyUnit == other.currencyUnit &&
        providers == other.providers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, currencyMark.hashCode);
    _$hash = $jc(_$hash, currencyUnit.hashCode);
    _$hash = $jc(_$hash, providers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentSetting')
          ..add('currencyCode', currencyCode)
          ..add('currencyMark', currencyMark)
          ..add('currencyUnit', currencyUnit)
          ..add('providers', providers))
        .toString();
  }
}

class PaymentSettingBuilder
    implements Builder<PaymentSetting, PaymentSettingBuilder> {
  _$PaymentSetting? _$v;

  String? _currencyCode;
  String? get currencyCode => _$this._currencyCode;
  set currencyCode(String? currencyCode) => _$this._currencyCode = currencyCode;

  String? _currencyMark;
  String? get currencyMark => _$this._currencyMark;
  set currencyMark(String? currencyMark) => _$this._currencyMark = currencyMark;

  int? _currencyUnit;
  int? get currencyUnit => _$this._currencyUnit;
  set currencyUnit(int? currencyUnit) => _$this._currencyUnit = currencyUnit;

  ListBuilder<PaymentProvider>? _providers;
  ListBuilder<PaymentProvider> get providers =>
      _$this._providers ??= ListBuilder<PaymentProvider>();
  set providers(ListBuilder<PaymentProvider>? providers) =>
      _$this._providers = providers;

  PaymentSettingBuilder() {
    PaymentSetting._defaults(this);
  }

  PaymentSettingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currencyCode = $v.currencyCode;
      _currencyMark = $v.currencyMark;
      _currencyUnit = $v.currencyUnit;
      _providers = $v.providers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentSetting other) {
    _$v = other as _$PaymentSetting;
  }

  @override
  void update(void Function(PaymentSettingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentSetting build() => _build();

  _$PaymentSetting _build() {
    _$PaymentSetting _$result;
    try {
      _$result = _$v ??
          _$PaymentSetting._(
            currencyCode: currencyCode,
            currencyMark: currencyMark,
            currencyUnit: currencyUnit,
            providers: _providers?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'providers';
        _providers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PaymentSetting', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
