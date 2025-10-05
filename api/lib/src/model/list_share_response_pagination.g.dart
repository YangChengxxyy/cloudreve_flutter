// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_share_response_pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListShareResponsePagination extends ListShareResponsePagination {
  @override
  final int? pageSize;
  @override
  final String? nextToken;
  @override
  final bool? isCursor;

  factory _$ListShareResponsePagination(
          [void Function(ListShareResponsePaginationBuilder)? updates]) =>
      (ListShareResponsePaginationBuilder()..update(updates))._build();

  _$ListShareResponsePagination._(
      {this.pageSize, this.nextToken, this.isCursor})
      : super._();
  @override
  ListShareResponsePagination rebuild(
          void Function(ListShareResponsePaginationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListShareResponsePaginationBuilder toBuilder() =>
      ListShareResponsePaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListShareResponsePagination &&
        pageSize == other.pageSize &&
        nextToken == other.nextToken &&
        isCursor == other.isCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, isCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListShareResponsePagination')
          ..add('pageSize', pageSize)
          ..add('nextToken', nextToken)
          ..add('isCursor', isCursor))
        .toString();
  }
}

class ListShareResponsePaginationBuilder
    implements
        Builder<ListShareResponsePagination,
            ListShareResponsePaginationBuilder> {
  _$ListShareResponsePagination? _$v;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _isCursor;
  bool? get isCursor => _$this._isCursor;
  set isCursor(bool? isCursor) => _$this._isCursor = isCursor;

  ListShareResponsePaginationBuilder() {
    ListShareResponsePagination._defaults(this);
  }

  ListShareResponsePaginationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageSize = $v.pageSize;
      _nextToken = $v.nextToken;
      _isCursor = $v.isCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListShareResponsePagination other) {
    _$v = other as _$ListShareResponsePagination;
  }

  @override
  void update(void Function(ListShareResponsePaginationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListShareResponsePagination build() => _build();

  _$ListShareResponsePagination _build() {
    final _$result = _$v ??
        _$ListShareResponsePagination._(
          pageSize: pageSize,
          nextToken: nextToken,
          isCursor: isCursor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
