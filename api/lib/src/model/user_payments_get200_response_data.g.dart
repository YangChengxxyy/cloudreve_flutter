// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_payments_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserPaymentsGet200ResponseData extends UserPaymentsGet200ResponseData {
  @override
  final UserPaymentsGet200ResponseDataPagination? pagination;
  @override
  final BuiltList<Payment>? payments;

  factory _$UserPaymentsGet200ResponseData(
          [void Function(UserPaymentsGet200ResponseDataBuilder)? updates]) =>
      (UserPaymentsGet200ResponseDataBuilder()..update(updates))._build();

  _$UserPaymentsGet200ResponseData._({this.pagination, this.payments})
      : super._();
  @override
  UserPaymentsGet200ResponseData rebuild(
          void Function(UserPaymentsGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserPaymentsGet200ResponseDataBuilder toBuilder() =>
      UserPaymentsGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserPaymentsGet200ResponseData &&
        pagination == other.pagination &&
        payments == other.payments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jc(_$hash, payments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserPaymentsGet200ResponseData')
          ..add('pagination', pagination)
          ..add('payments', payments))
        .toString();
  }
}

class UserPaymentsGet200ResponseDataBuilder
    implements
        Builder<UserPaymentsGet200ResponseData,
            UserPaymentsGet200ResponseDataBuilder> {
  _$UserPaymentsGet200ResponseData? _$v;

  UserPaymentsGet200ResponseDataPaginationBuilder? _pagination;
  UserPaymentsGet200ResponseDataPaginationBuilder get pagination =>
      _$this._pagination ??= UserPaymentsGet200ResponseDataPaginationBuilder();
  set pagination(UserPaymentsGet200ResponseDataPaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  ListBuilder<Payment>? _payments;
  ListBuilder<Payment> get payments =>
      _$this._payments ??= ListBuilder<Payment>();
  set payments(ListBuilder<Payment>? payments) => _$this._payments = payments;

  UserPaymentsGet200ResponseDataBuilder() {
    UserPaymentsGet200ResponseData._defaults(this);
  }

  UserPaymentsGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pagination = $v.pagination?.toBuilder();
      _payments = $v.payments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserPaymentsGet200ResponseData other) {
    _$v = other as _$UserPaymentsGet200ResponseData;
  }

  @override
  void update(void Function(UserPaymentsGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserPaymentsGet200ResponseData build() => _build();

  _$UserPaymentsGet200ResponseData _build() {
    _$UserPaymentsGet200ResponseData _$result;
    try {
      _$result = _$v ??
          _$UserPaymentsGet200ResponseData._(
            pagination: _pagination?.build(),
            payments: _payments?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pagination';
        _pagination?.build();
        _$failedField = 'payments';
        _payments?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserPaymentsGet200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
