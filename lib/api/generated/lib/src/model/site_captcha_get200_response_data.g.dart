// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_captcha_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SiteCaptchaGet200ResponseData extends SiteCaptchaGet200ResponseData {
  @override
  final String image;
  @override
  final String ticket;

  factory _$SiteCaptchaGet200ResponseData(
          [void Function(SiteCaptchaGet200ResponseDataBuilder)? updates]) =>
      (SiteCaptchaGet200ResponseDataBuilder()..update(updates))._build();

  _$SiteCaptchaGet200ResponseData._({required this.image, required this.ticket})
      : super._();
  @override
  SiteCaptchaGet200ResponseData rebuild(
          void Function(SiteCaptchaGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SiteCaptchaGet200ResponseDataBuilder toBuilder() =>
      SiteCaptchaGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SiteCaptchaGet200ResponseData &&
        image == other.image &&
        ticket == other.ticket;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, ticket.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SiteCaptchaGet200ResponseData')
          ..add('image', image)
          ..add('ticket', ticket))
        .toString();
  }
}

class SiteCaptchaGet200ResponseDataBuilder
    implements
        Builder<SiteCaptchaGet200ResponseData,
            SiteCaptchaGet200ResponseDataBuilder> {
  _$SiteCaptchaGet200ResponseData? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _ticket;
  String? get ticket => _$this._ticket;
  set ticket(String? ticket) => _$this._ticket = ticket;

  SiteCaptchaGet200ResponseDataBuilder() {
    SiteCaptchaGet200ResponseData._defaults(this);
  }

  SiteCaptchaGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _ticket = $v.ticket;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SiteCaptchaGet200ResponseData other) {
    _$v = other as _$SiteCaptchaGet200ResponseData;
  }

  @override
  void update(void Function(SiteCaptchaGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SiteCaptchaGet200ResponseData build() => _build();

  _$SiteCaptchaGet200ResponseData _build() {
    final _$result = _$v ??
        _$SiteCaptchaGet200ResponseData._(
          image: BuiltValueNullFieldError.checkNotNull(
              image, r'SiteCaptchaGet200ResponseData', 'image'),
          ticket: BuiltValueNullFieldError.checkNotNull(
              ticket, r'SiteCaptchaGet200ResponseData', 'ticket'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
