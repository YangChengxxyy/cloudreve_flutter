// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TaskResponseStatusEnum _$taskResponseStatusEnum_queued =
    const TaskResponseStatusEnum._('queued');
const TaskResponseStatusEnum _$taskResponseStatusEnum_processing =
    const TaskResponseStatusEnum._('processing');
const TaskResponseStatusEnum _$taskResponseStatusEnum_suspending =
    const TaskResponseStatusEnum._('suspending');
const TaskResponseStatusEnum _$taskResponseStatusEnum_error =
    const TaskResponseStatusEnum._('error');
const TaskResponseStatusEnum _$taskResponseStatusEnum_canceled =
    const TaskResponseStatusEnum._('canceled');
const TaskResponseStatusEnum _$taskResponseStatusEnum_completed =
    const TaskResponseStatusEnum._('completed');

TaskResponseStatusEnum _$taskResponseStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$taskResponseStatusEnum_queued;
    case 'processing':
      return _$taskResponseStatusEnum_processing;
    case 'suspending':
      return _$taskResponseStatusEnum_suspending;
    case 'error':
      return _$taskResponseStatusEnum_error;
    case 'canceled':
      return _$taskResponseStatusEnum_canceled;
    case 'completed':
      return _$taskResponseStatusEnum_completed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TaskResponseStatusEnum> _$taskResponseStatusEnumValues =
    BuiltSet<TaskResponseStatusEnum>(const <TaskResponseStatusEnum>[
  _$taskResponseStatusEnum_queued,
  _$taskResponseStatusEnum_processing,
  _$taskResponseStatusEnum_suspending,
  _$taskResponseStatusEnum_error,
  _$taskResponseStatusEnum_canceled,
  _$taskResponseStatusEnum_completed,
]);

const TaskResponseTypeEnum _$taskResponseTypeEnum_mediaMeta =
    const TaskResponseTypeEnum._('mediaMeta');
const TaskResponseTypeEnum _$taskResponseTypeEnum_entityRecycleRoutine =
    const TaskResponseTypeEnum._('entityRecycleRoutine');
const TaskResponseTypeEnum _$taskResponseTypeEnum_explicitEntityRecycle =
    const TaskResponseTypeEnum._('explicitEntityRecycle');
const TaskResponseTypeEnum _$taskResponseTypeEnum_uploadSentinelCheck =
    const TaskResponseTypeEnum._('uploadSentinelCheck');
const TaskResponseTypeEnum _$taskResponseTypeEnum_createArchive =
    const TaskResponseTypeEnum._('createArchive');
const TaskResponseTypeEnum _$taskResponseTypeEnum_extractArchive =
    const TaskResponseTypeEnum._('extractArchive');
const TaskResponseTypeEnum _$taskResponseTypeEnum_relocate =
    const TaskResponseTypeEnum._('relocate');
const TaskResponseTypeEnum _$taskResponseTypeEnum_remoteDownload =
    const TaskResponseTypeEnum._('remoteDownload');
const TaskResponseTypeEnum _$taskResponseTypeEnum_import_ =
    const TaskResponseTypeEnum._('import_');

TaskResponseTypeEnum _$taskResponseTypeEnumValueOf(String name) {
  switch (name) {
    case 'mediaMeta':
      return _$taskResponseTypeEnum_mediaMeta;
    case 'entityRecycleRoutine':
      return _$taskResponseTypeEnum_entityRecycleRoutine;
    case 'explicitEntityRecycle':
      return _$taskResponseTypeEnum_explicitEntityRecycle;
    case 'uploadSentinelCheck':
      return _$taskResponseTypeEnum_uploadSentinelCheck;
    case 'createArchive':
      return _$taskResponseTypeEnum_createArchive;
    case 'extractArchive':
      return _$taskResponseTypeEnum_extractArchive;
    case 'relocate':
      return _$taskResponseTypeEnum_relocate;
    case 'remoteDownload':
      return _$taskResponseTypeEnum_remoteDownload;
    case 'import_':
      return _$taskResponseTypeEnum_import_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TaskResponseTypeEnum> _$taskResponseTypeEnumValues =
    BuiltSet<TaskResponseTypeEnum>(const <TaskResponseTypeEnum>[
  _$taskResponseTypeEnum_mediaMeta,
  _$taskResponseTypeEnum_entityRecycleRoutine,
  _$taskResponseTypeEnum_explicitEntityRecycle,
  _$taskResponseTypeEnum_uploadSentinelCheck,
  _$taskResponseTypeEnum_createArchive,
  _$taskResponseTypeEnum_extractArchive,
  _$taskResponseTypeEnum_relocate,
  _$taskResponseTypeEnum_remoteDownload,
  _$taskResponseTypeEnum_import_,
]);

Serializer<TaskResponseStatusEnum> _$taskResponseStatusEnumSerializer =
    _$TaskResponseStatusEnumSerializer();
Serializer<TaskResponseTypeEnum> _$taskResponseTypeEnumSerializer =
    _$TaskResponseTypeEnumSerializer();

class _$TaskResponseStatusEnumSerializer
    implements PrimitiveSerializer<TaskResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'processing': 'processing',
    'suspending': 'suspending',
    'error': 'error',
    'canceled': 'canceled',
    'completed': 'completed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'processing': 'processing',
    'suspending': 'suspending',
    'error': 'error',
    'canceled': 'canceled',
    'completed': 'completed',
  };

  @override
  final Iterable<Type> types = const <Type>[TaskResponseStatusEnum];
  @override
  final String wireName = 'TaskResponseStatusEnum';

  @override
  Object serialize(Serializers serializers, TaskResponseStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TaskResponseStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TaskResponseStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TaskResponseTypeEnumSerializer
    implements PrimitiveSerializer<TaskResponseTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mediaMeta': 'media_meta',
    'entityRecycleRoutine': 'entity_recycle_routine',
    'explicitEntityRecycle': 'explicit_entity_recycle',
    'uploadSentinelCheck': 'upload_sentinel_check',
    'createArchive': 'create_archive',
    'extractArchive': 'extract_archive',
    'relocate': 'relocate',
    'remoteDownload': 'remote_download',
    'import_': 'import',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'media_meta': 'mediaMeta',
    'entity_recycle_routine': 'entityRecycleRoutine',
    'explicit_entity_recycle': 'explicitEntityRecycle',
    'upload_sentinel_check': 'uploadSentinelCheck',
    'create_archive': 'createArchive',
    'extract_archive': 'extractArchive',
    'relocate': 'relocate',
    'remote_download': 'remoteDownload',
    'import': 'import_',
  };

  @override
  final Iterable<Type> types = const <Type>[TaskResponseTypeEnum];
  @override
  final String wireName = 'TaskResponseTypeEnum';

  @override
  Object serialize(Serializers serializers, TaskResponseTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TaskResponseTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TaskResponseTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TaskResponse extends TaskResponse {
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? id;
  @override
  final TaskResponseStatusEnum? status;
  @override
  final TaskResponseTypeEnum? type;
  @override
  final TaskResponseSummary? summary;
  @override
  final int? duration;
  @override
  final int? resumeTime;
  @override
  final String? error;
  @override
  final BuiltList<String>? errorHistory;
  @override
  final int? retryCount;
  @override
  final Node? node;

  factory _$TaskResponse([void Function(TaskResponseBuilder)? updates]) =>
      (TaskResponseBuilder()..update(updates))._build();

  _$TaskResponse._(
      {this.createdAt,
      this.updatedAt,
      this.id,
      this.status,
      this.type,
      this.summary,
      this.duration,
      this.resumeTime,
      this.error,
      this.errorHistory,
      this.retryCount,
      this.node})
      : super._();
  @override
  TaskResponse rebuild(void Function(TaskResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskResponseBuilder toBuilder() => TaskResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskResponse &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        id == other.id &&
        status == other.status &&
        type == other.type &&
        summary == other.summary &&
        duration == other.duration &&
        resumeTime == other.resumeTime &&
        error == other.error &&
        errorHistory == other.errorHistory &&
        retryCount == other.retryCount &&
        node == other.node;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, resumeTime.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, errorHistory.hashCode);
    _$hash = $jc(_$hash, retryCount.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskResponse')
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('id', id)
          ..add('status', status)
          ..add('type', type)
          ..add('summary', summary)
          ..add('duration', duration)
          ..add('resumeTime', resumeTime)
          ..add('error', error)
          ..add('errorHistory', errorHistory)
          ..add('retryCount', retryCount)
          ..add('node', node))
        .toString();
  }
}

class TaskResponseBuilder
    implements Builder<TaskResponse, TaskResponseBuilder> {
  _$TaskResponse? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TaskResponseStatusEnum? _status;
  TaskResponseStatusEnum? get status => _$this._status;
  set status(TaskResponseStatusEnum? status) => _$this._status = status;

  TaskResponseTypeEnum? _type;
  TaskResponseTypeEnum? get type => _$this._type;
  set type(TaskResponseTypeEnum? type) => _$this._type = type;

  TaskResponseSummaryBuilder? _summary;
  TaskResponseSummaryBuilder get summary =>
      _$this._summary ??= TaskResponseSummaryBuilder();
  set summary(TaskResponseSummaryBuilder? summary) => _$this._summary = summary;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  int? _resumeTime;
  int? get resumeTime => _$this._resumeTime;
  set resumeTime(int? resumeTime) => _$this._resumeTime = resumeTime;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ListBuilder<String>? _errorHistory;
  ListBuilder<String> get errorHistory =>
      _$this._errorHistory ??= ListBuilder<String>();
  set errorHistory(ListBuilder<String>? errorHistory) =>
      _$this._errorHistory = errorHistory;

  int? _retryCount;
  int? get retryCount => _$this._retryCount;
  set retryCount(int? retryCount) => _$this._retryCount = retryCount;

  NodeBuilder? _node;
  NodeBuilder get node => _$this._node ??= NodeBuilder();
  set node(NodeBuilder? node) => _$this._node = node;

  TaskResponseBuilder() {
    TaskResponse._defaults(this);
  }

  TaskResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _id = $v.id;
      _status = $v.status;
      _type = $v.type;
      _summary = $v.summary?.toBuilder();
      _duration = $v.duration;
      _resumeTime = $v.resumeTime;
      _error = $v.error;
      _errorHistory = $v.errorHistory?.toBuilder();
      _retryCount = $v.retryCount;
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskResponse other) {
    _$v = other as _$TaskResponse;
  }

  @override
  void update(void Function(TaskResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskResponse build() => _build();

  _$TaskResponse _build() {
    _$TaskResponse _$result;
    try {
      _$result = _$v ??
          _$TaskResponse._(
            createdAt: createdAt,
            updatedAt: updatedAt,
            id: id,
            status: status,
            type: type,
            summary: _summary?.build(),
            duration: duration,
            resumeTime: resumeTime,
            error: error,
            errorHistory: _errorHistory?.build(),
            retryCount: retryCount,
            node: _node?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summary';
        _summary?.build();

        _$failedField = 'errorHistory';
        _errorHistory?.build();

        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TaskResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
