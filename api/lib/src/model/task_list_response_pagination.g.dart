// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list_response_pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskListResponsePagination extends TaskListResponsePagination {
  @override
  final int? pageSize;
  @override
  final String? nextToken;
  @override
  final bool? isCursor;

  factory _$TaskListResponsePagination(
          [void Function(TaskListResponsePaginationBuilder)? updates]) =>
      (TaskListResponsePaginationBuilder()..update(updates))._build();

  _$TaskListResponsePagination._({this.pageSize, this.nextToken, this.isCursor})
      : super._();
  @override
  TaskListResponsePagination rebuild(
          void Function(TaskListResponsePaginationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskListResponsePaginationBuilder toBuilder() =>
      TaskListResponsePaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskListResponsePagination &&
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
    return (newBuiltValueToStringHelper(r'TaskListResponsePagination')
          ..add('pageSize', pageSize)
          ..add('nextToken', nextToken)
          ..add('isCursor', isCursor))
        .toString();
  }
}

class TaskListResponsePaginationBuilder
    implements
        Builder<TaskListResponsePagination, TaskListResponsePaginationBuilder> {
  _$TaskListResponsePagination? _$v;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _isCursor;
  bool? get isCursor => _$this._isCursor;
  set isCursor(bool? isCursor) => _$this._isCursor = isCursor;

  TaskListResponsePaginationBuilder() {
    TaskListResponsePagination._defaults(this);
  }

  TaskListResponsePaginationBuilder get _$this {
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
  void replace(TaskListResponsePagination other) {
    _$v = other as _$TaskListResponsePagination;
  }

  @override
  void update(void Function(TaskListResponsePaginationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskListResponsePagination build() => _build();

  _$TaskListResponsePagination _build() {
    final _$result = _$v ??
        _$TaskListResponsePagination._(
          pageSize: pageSize,
          nextToken: nextToken,
          isCursor: isCursor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
