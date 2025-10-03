// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credit_changes_get200_response_data_pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserCreditChangesGet200ResponseDataPagination
    extends UserCreditChangesGet200ResponseDataPagination {
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final String nextToken;
  @override
  final bool? isCursor;

  factory _$UserCreditChangesGet200ResponseDataPagination(
          [void Function(UserCreditChangesGet200ResponseDataPaginationBuilder)?
              updates]) =>
      (UserCreditChangesGet200ResponseDataPaginationBuilder()..update(updates))
          ._build();

  _$UserCreditChangesGet200ResponseDataPagination._(
      {required this.page,
      required this.pageSize,
      required this.nextToken,
      this.isCursor})
      : super._();
  @override
  UserCreditChangesGet200ResponseDataPagination rebuild(
          void Function(UserCreditChangesGet200ResponseDataPaginationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCreditChangesGet200ResponseDataPaginationBuilder toBuilder() =>
      UserCreditChangesGet200ResponseDataPaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCreditChangesGet200ResponseDataPagination &&
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
            r'UserCreditChangesGet200ResponseDataPagination')
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('nextToken', nextToken)
          ..add('isCursor', isCursor))
        .toString();
  }
}

class UserCreditChangesGet200ResponseDataPaginationBuilder
    implements
        Builder<UserCreditChangesGet200ResponseDataPagination,
            UserCreditChangesGet200ResponseDataPaginationBuilder> {
  _$UserCreditChangesGet200ResponseDataPagination? _$v;

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

  UserCreditChangesGet200ResponseDataPaginationBuilder() {
    UserCreditChangesGet200ResponseDataPagination._defaults(this);
  }

  UserCreditChangesGet200ResponseDataPaginationBuilder get _$this {
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
  void replace(UserCreditChangesGet200ResponseDataPagination other) {
    _$v = other as _$UserCreditChangesGet200ResponseDataPagination;
  }

  @override
  void update(
      void Function(UserCreditChangesGet200ResponseDataPaginationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCreditChangesGet200ResponseDataPagination build() => _build();

  _$UserCreditChangesGet200ResponseDataPagination _build() {
    final _$result = _$v ??
        _$UserCreditChangesGet200ResponseDataPagination._(
          page: BuiltValueNullFieldError.checkNotNull(
              page, r'UserCreditChangesGet200ResponseDataPagination', 'page'),
          pageSize: BuiltValueNullFieldError.checkNotNull(pageSize,
              r'UserCreditChangesGet200ResponseDataPagination', 'pageSize'),
          nextToken: BuiltValueNullFieldError.checkNotNull(nextToken,
              r'UserCreditChangesGet200ResponseDataPagination', 'nextToken'),
          isCursor: isCursor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
