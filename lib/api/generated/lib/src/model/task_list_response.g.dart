// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskListResponse extends TaskListResponse {
  @override
  final TaskListResponsePagination pagination;
  @override
  final BuiltList<TaskResponse> tasks;

  factory _$TaskListResponse(
          [void Function(TaskListResponseBuilder)? updates]) =>
      (TaskListResponseBuilder()..update(updates))._build();

  _$TaskListResponse._({required this.pagination, required this.tasks})
      : super._();
  @override
  TaskListResponse rebuild(void Function(TaskListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskListResponseBuilder toBuilder() =>
      TaskListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskListResponse &&
        pagination == other.pagination &&
        tasks == other.tasks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jc(_$hash, tasks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskListResponse')
          ..add('pagination', pagination)
          ..add('tasks', tasks))
        .toString();
  }
}

class TaskListResponseBuilder
    implements Builder<TaskListResponse, TaskListResponseBuilder> {
  _$TaskListResponse? _$v;

  TaskListResponsePaginationBuilder? _pagination;
  TaskListResponsePaginationBuilder get pagination =>
      _$this._pagination ??= TaskListResponsePaginationBuilder();
  set pagination(TaskListResponsePaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  ListBuilder<TaskResponse>? _tasks;
  ListBuilder<TaskResponse> get tasks =>
      _$this._tasks ??= ListBuilder<TaskResponse>();
  set tasks(ListBuilder<TaskResponse>? tasks) => _$this._tasks = tasks;

  TaskListResponseBuilder() {
    TaskListResponse._defaults(this);
  }

  TaskListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pagination = $v.pagination.toBuilder();
      _tasks = $v.tasks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskListResponse other) {
    _$v = other as _$TaskListResponse;
  }

  @override
  void update(void Function(TaskListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskListResponse build() => _build();

  _$TaskListResponse _build() {
    _$TaskListResponse _$result;
    try {
      _$result = _$v ??
          _$TaskListResponse._(
            pagination: pagination.build(),
            tasks: tasks.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pagination';
        pagination.build();
        _$failedField = 'tasks';
        tasks.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TaskListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
