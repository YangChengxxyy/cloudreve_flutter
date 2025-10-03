// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captcha_fields.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CaptchaFields extends CaptchaFields {
  @override
  final String? captcha;
  @override
  final String? ticket;

  factory _$CaptchaFields([void Function(CaptchaFieldsBuilder)? updates]) =>
      (CaptchaFieldsBuilder()..update(updates))._build();

  _$CaptchaFields._({this.captcha, this.ticket}) : super._();
  @override
  CaptchaFields rebuild(void Function(CaptchaFieldsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CaptchaFieldsBuilder toBuilder() => CaptchaFieldsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaptchaFields &&
        captcha == other.captcha &&
        ticket == other.ticket;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, captcha.hashCode);
    _$hash = $jc(_$hash, ticket.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CaptchaFields')
          ..add('captcha', captcha)
          ..add('ticket', ticket))
        .toString();
  }
}

class CaptchaFieldsBuilder
    implements Builder<CaptchaFields, CaptchaFieldsBuilder> {
  _$CaptchaFields? _$v;

  String? _captcha;
  String? get captcha => _$this._captcha;
  set captcha(String? captcha) => _$this._captcha = captcha;

  String? _ticket;
  String? get ticket => _$this._ticket;
  set ticket(String? ticket) => _$this._ticket = ticket;

  CaptchaFieldsBuilder() {
    CaptchaFields._defaults(this);
  }

  CaptchaFieldsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _captcha = $v.captcha;
      _ticket = $v.ticket;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaptchaFields other) {
    _$v = other as _$CaptchaFields;
  }

  @override
  void update(void Function(CaptchaFieldsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CaptchaFields build() => _build();

  _$CaptchaFields _build() {
    final _$result = _$v ??
        _$CaptchaFields._(
          captcha: captcha,
          ticket: ticket,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
