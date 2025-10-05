// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_results.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginationResults extends PaginationResults {
  @override
  final int? page;
  @override
  final int? pageSize;
  @override
  final int? totalItems;
  @override
  final String? nextToken;
  @override
  final bool? isCursor;

  factory _$PaginationResults(
          [void Function(PaginationResultsBuilder)? updates]) =>
      (PaginationResultsBuilder()..update(updates))._build();

  _$PaginationResults._(
      {this.page,
      this.pageSize,
      this.totalItems,
      this.nextToken,
      this.isCursor})
      : super._();
  @override
  PaginationResults rebuild(void Function(PaginationResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginationResultsBuilder toBuilder() =>
      PaginationResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginationResults &&
        page == other.page &&
        pageSize == other.pageSize &&
        totalItems == other.totalItems &&
        nextToken == other.nextToken &&
        isCursor == other.isCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, totalItems.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, isCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaginationResults')
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('totalItems', totalItems)
          ..add('nextToken', nextToken)
          ..add('isCursor', isCursor))
        .toString();
  }
}

class PaginationResultsBuilder
    implements Builder<PaginationResults, PaginationResultsBuilder> {
  _$PaginationResults? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _totalItems;
  int? get totalItems => _$this._totalItems;
  set totalItems(int? totalItems) => _$this._totalItems = totalItems;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _isCursor;
  bool? get isCursor => _$this._isCursor;
  set isCursor(bool? isCursor) => _$this._isCursor = isCursor;

  PaginationResultsBuilder() {
    PaginationResults._defaults(this);
  }

  PaginationResultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _pageSize = $v.pageSize;
      _totalItems = $v.totalItems;
      _nextToken = $v.nextToken;
      _isCursor = $v.isCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaginationResults other) {
    _$v = other as _$PaginationResults;
  }

  @override
  void update(void Function(PaginationResultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginationResults build() => _build();

  _$PaginationResults _build() {
    final _$result = _$v ??
        _$PaginationResults._(
          page: page,
          pageSize: pageSize,
          totalItems: totalItems,
          nextToken: nextToken,
          isCursor: isCursor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
