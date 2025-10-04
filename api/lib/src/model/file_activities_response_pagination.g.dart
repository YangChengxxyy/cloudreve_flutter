// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_activities_response_pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileActivitiesResponsePagination
    extends FileActivitiesResponsePagination {
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final String nextToken;
  @override
  final bool? isCursor;

  factory _$FileActivitiesResponsePagination(
          [void Function(FileActivitiesResponsePaginationBuilder)? updates]) =>
      (FileActivitiesResponsePaginationBuilder()..update(updates))._build();

  _$FileActivitiesResponsePagination._(
      {required this.page,
      required this.pageSize,
      required this.nextToken,
      this.isCursor})
      : super._();
  @override
  FileActivitiesResponsePagination rebuild(
          void Function(FileActivitiesResponsePaginationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileActivitiesResponsePaginationBuilder toBuilder() =>
      FileActivitiesResponsePaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileActivitiesResponsePagination &&
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
    return (newBuiltValueToStringHelper(r'FileActivitiesResponsePagination')
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('nextToken', nextToken)
          ..add('isCursor', isCursor))
        .toString();
  }
}

class FileActivitiesResponsePaginationBuilder
    implements
        Builder<FileActivitiesResponsePagination,
            FileActivitiesResponsePaginationBuilder> {
  _$FileActivitiesResponsePagination? _$v;

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

  FileActivitiesResponsePaginationBuilder() {
    FileActivitiesResponsePagination._defaults(this);
  }

  FileActivitiesResponsePaginationBuilder get _$this {
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
  void replace(FileActivitiesResponsePagination other) {
    _$v = other as _$FileActivitiesResponsePagination;
  }

  @override
  void update(void Function(FileActivitiesResponsePaginationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileActivitiesResponsePagination build() => _build();

  _$FileActivitiesResponsePagination _build() {
    final _$result = _$v ??
        _$FileActivitiesResponsePagination._(
          page: BuiltValueNullFieldError.checkNotNull(
              page, r'FileActivitiesResponsePagination', 'page'),
          pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize, r'FileActivitiesResponsePagination', 'pageSize'),
          nextToken: BuiltValueNullFieldError.checkNotNull(
              nextToken, r'FileActivitiesResponsePagination', 'nextToken'),
          isCursor: isCursor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
