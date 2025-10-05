// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices_dav_get200_response_data_inner_pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DevicesDavGet200ResponseDataInnerPagination
    extends DevicesDavGet200ResponseDataInnerPagination {
  @override
  final int? page;
  @override
  final int? pageSize;
  @override
  final String? nextToken;
  @override
  final bool? isCursor;

  factory _$DevicesDavGet200ResponseDataInnerPagination(
          [void Function(DevicesDavGet200ResponseDataInnerPaginationBuilder)?
              updates]) =>
      (DevicesDavGet200ResponseDataInnerPaginationBuilder()..update(updates))
          ._build();

  _$DevicesDavGet200ResponseDataInnerPagination._(
      {this.page, this.pageSize, this.nextToken, this.isCursor})
      : super._();
  @override
  DevicesDavGet200ResponseDataInnerPagination rebuild(
          void Function(DevicesDavGet200ResponseDataInnerPaginationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DevicesDavGet200ResponseDataInnerPaginationBuilder toBuilder() =>
      DevicesDavGet200ResponseDataInnerPaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DevicesDavGet200ResponseDataInnerPagination &&
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
            r'DevicesDavGet200ResponseDataInnerPagination')
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('nextToken', nextToken)
          ..add('isCursor', isCursor))
        .toString();
  }
}

class DevicesDavGet200ResponseDataInnerPaginationBuilder
    implements
        Builder<DevicesDavGet200ResponseDataInnerPagination,
            DevicesDavGet200ResponseDataInnerPaginationBuilder> {
  _$DevicesDavGet200ResponseDataInnerPagination? _$v;

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

  DevicesDavGet200ResponseDataInnerPaginationBuilder() {
    DevicesDavGet200ResponseDataInnerPagination._defaults(this);
  }

  DevicesDavGet200ResponseDataInnerPaginationBuilder get _$this {
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
  void replace(DevicesDavGet200ResponseDataInnerPagination other) {
    _$v = other as _$DevicesDavGet200ResponseDataInnerPagination;
  }

  @override
  void update(
      void Function(DevicesDavGet200ResponseDataInnerPaginationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DevicesDavGet200ResponseDataInnerPagination build() => _build();

  _$DevicesDavGet200ResponseDataInnerPagination _build() {
    final _$result = _$v ??
        _$DevicesDavGet200ResponseDataInnerPagination._(
          page: page,
          pageSize: pageSize,
          nextToken: nextToken,
          isCursor: isCursor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
