// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_payments_get200_response_data_pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserPaymentsGet200ResponseDataPagination
    extends UserPaymentsGet200ResponseDataPagination {
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final String nextToken;
  @override
  final bool? isCursor;

  factory _$UserPaymentsGet200ResponseDataPagination(
          [void Function(UserPaymentsGet200ResponseDataPaginationBuilder)?
              updates]) =>
      (UserPaymentsGet200ResponseDataPaginationBuilder()..update(updates))
          ._build();

  _$UserPaymentsGet200ResponseDataPagination._(
      {required this.page,
      required this.pageSize,
      required this.nextToken,
      this.isCursor})
      : super._();
  @override
  UserPaymentsGet200ResponseDataPagination rebuild(
          void Function(UserPaymentsGet200ResponseDataPaginationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserPaymentsGet200ResponseDataPaginationBuilder toBuilder() =>
      UserPaymentsGet200ResponseDataPaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserPaymentsGet200ResponseDataPagination &&
        page == other.page &&
        pageSize == other.pageSize &&
        nextToken == other.nextToken &&
        isCursor == other.isCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, isCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'UserPaymentsGet200ResponseDataPagination')
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('nextToken', nextToken)
          ..add('isCursor', isCursor))
        .toString();
  }
}

class UserPaymentsGet200ResponseDataPaginationBuilder
    implements
        Builder<UserPaymentsGet200ResponseDataPagination,
            UserPaymentsGet200ResponseDataPaginationBuilder> {
  _$UserPaymentsGet200ResponseDataPagination? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _isCursor;
  bool? get isCursor => _$this._isCursor;
  set isCursor(bool? isCursor) => _$this._isCursor = isCursor;

  UserPaymentsGet200ResponseDataPaginationBuilder() {
    UserPaymentsGet200ResponseDataPagination._defaults(this);
  }

  UserPaymentsGet200ResponseDataPaginationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _pageSize = $v.pageSize;
      _nextToken = $v.nextToken;
      _isCursor = $v.isCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserPaymentsGet200ResponseDataPagination other) {
    _$v = other as _$UserPaymentsGet200ResponseDataPagination;
  }

  @override
  void update(
      void Function(UserPaymentsGet200ResponseDataPaginationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserPaymentsGet200ResponseDataPagination build() => _build();

  _$UserPaymentsGet200ResponseDataPagination _build() {
    final _$result = _$v ??
        _$UserPaymentsGet200ResponseDataPagination._(
          page: BuiltValueNullFieldError.checkNotNull(
              page, r'UserPaymentsGet200ResponseDataPagination', 'page'),
          pageSize: BuiltValueNullFieldError.checkNotNull(pageSize,
              r'UserPaymentsGet200ResponseDataPagination', 'pageSize'),
          nextToken: BuiltValueNullFieldError.checkNotNull(nextToken,
              r'UserPaymentsGet200ResponseDataPagination', 'nextToken'),
          isCursor: isCursor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
