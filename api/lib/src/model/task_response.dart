//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/task_response_summary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/node.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_response.g.dart';

/// TaskResponse
///
/// Properties:
/// * [createdAt] 
/// * [updatedAt] 
/// * [id] - ID of the tasks.
/// * [status] - Status of the task
/// * [type] 
/// * [summary] 
/// * [duration] - Tasl executed duration in milliseconds.
/// * [resumeTime] - Time stamp of the next expected resume time for suspended task.
/// * [error] - Error message (if any).
/// * [errorHistory] - List of error messages in previous retries (if any).
/// * [retryCount] - Retry count.
/// * [node] 
@BuiltValue()
abstract class TaskResponse implements Built<TaskResponse, TaskResponseBuilder> {
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  /// ID of the tasks.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Status of the task
  @BuiltValueField(wireName: r'status')
  TaskResponseStatusEnum get status;
  // enum statusEnum {  queued,  processing,  suspending,  error,  canceled,  completed,  };

  @BuiltValueField(wireName: r'type')
  TaskResponseTypeEnum get type;
  // enum typeEnum {  media_meta,  entity_recycle_routine,  explicit_entity_recycle,  upload_sentinel_check,  create_archive,  extract_archive,  relocate,  remote_download,  import,  };

  @BuiltValueField(wireName: r'summary')
  TaskResponseSummary? get summary;

  /// Tasl executed duration in milliseconds.
  @BuiltValueField(wireName: r'duration')
  int? get duration;

  /// Time stamp of the next expected resume time for suspended task.
  @BuiltValueField(wireName: r'resume_time')
  int? get resumeTime;

  /// Error message (if any).
  @BuiltValueField(wireName: r'error')
  String? get error;

  /// List of error messages in previous retries (if any).
  @BuiltValueField(wireName: r'error_history')
  BuiltList<String>? get errorHistory;

  /// Retry count.
  @BuiltValueField(wireName: r'retry_count')
  int? get retryCount;

  @BuiltValueField(wireName: r'node')
  Node get node;

  TaskResponse._();

  factory TaskResponse([void updates(TaskResponseBuilder b)]) = _$TaskResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaskResponse> get serializer => _$TaskResponseSerializer();
}

class _$TaskResponseSerializer implements PrimitiveSerializer<TaskResponse> {
  @override
  final Iterable<Type> types = const [TaskResponse, _$TaskResponse];

  @override
  final String wireName = r'TaskResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaskResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(TaskResponseStatusEnum),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(TaskResponseTypeEnum),
    );
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType.nullable(TaskResponseSummary),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.resumeTime != null) {
      yield r'resume_time';
      yield serializers.serialize(
        object.resumeTime,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.errorHistory != null) {
      yield r'error_history';
      yield serializers.serialize(
        object.errorHistory,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.retryCount != null) {
      yield r'retry_count';
      yield serializers.serialize(
        object.retryCount,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'node';
    yield serializers.serialize(
      object.node,
      specifiedType: const FullType(Node),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TaskResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TaskResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TaskResponseStatusEnum),
          ) as TaskResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TaskResponseTypeEnum),
          ) as TaskResponseTypeEnum;
          result.type = valueDes;
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TaskResponseSummary),
          ) as TaskResponseSummary?;
          if (valueDes == null) continue;
          result.summary.replace(valueDes);
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.duration = valueDes;
          break;
        case r'resume_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.resumeTime = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'error_history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.errorHistory.replace(valueDes);
          break;
        case r'retry_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.retryCount = valueDes;
          break;
        case r'node':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Node),
          ) as Node;
          result.node.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaskResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class TaskResponseStatusEnum extends EnumClass {

  /// Status of the task
  @BuiltValueEnumConst(wireName: r'queued')
  static const TaskResponseStatusEnum queued = _$taskResponseStatusEnum_queued;
  /// Status of the task
  @BuiltValueEnumConst(wireName: r'processing')
  static const TaskResponseStatusEnum processing = _$taskResponseStatusEnum_processing;
  /// Status of the task
  @BuiltValueEnumConst(wireName: r'suspending')
  static const TaskResponseStatusEnum suspending = _$taskResponseStatusEnum_suspending;
  /// Status of the task
  @BuiltValueEnumConst(wireName: r'error')
  static const TaskResponseStatusEnum error = _$taskResponseStatusEnum_error;
  /// Status of the task
  @BuiltValueEnumConst(wireName: r'canceled')
  static const TaskResponseStatusEnum canceled = _$taskResponseStatusEnum_canceled;
  /// Status of the task
  @BuiltValueEnumConst(wireName: r'completed')
  static const TaskResponseStatusEnum completed = _$taskResponseStatusEnum_completed;

  static Serializer<TaskResponseStatusEnum> get serializer => _$taskResponseStatusEnumSerializer;

  const TaskResponseStatusEnum._(String name): super(name);

  static BuiltSet<TaskResponseStatusEnum> get values => _$taskResponseStatusEnumValues;
  static TaskResponseStatusEnum valueOf(String name) => _$taskResponseStatusEnumValueOf(name);
}

class TaskResponseTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'media_meta')
  static const TaskResponseTypeEnum mediaMeta = _$taskResponseTypeEnum_mediaMeta;
  @BuiltValueEnumConst(wireName: r'entity_recycle_routine')
  static const TaskResponseTypeEnum entityRecycleRoutine = _$taskResponseTypeEnum_entityRecycleRoutine;
  @BuiltValueEnumConst(wireName: r'explicit_entity_recycle')
  static const TaskResponseTypeEnum explicitEntityRecycle = _$taskResponseTypeEnum_explicitEntityRecycle;
  @BuiltValueEnumConst(wireName: r'upload_sentinel_check')
  static const TaskResponseTypeEnum uploadSentinelCheck = _$taskResponseTypeEnum_uploadSentinelCheck;
  @BuiltValueEnumConst(wireName: r'create_archive')
  static const TaskResponseTypeEnum createArchive = _$taskResponseTypeEnum_createArchive;
  @BuiltValueEnumConst(wireName: r'extract_archive')
  static const TaskResponseTypeEnum extractArchive = _$taskResponseTypeEnum_extractArchive;
  @BuiltValueEnumConst(wireName: r'relocate')
  static const TaskResponseTypeEnum relocate = _$taskResponseTypeEnum_relocate;
  @BuiltValueEnumConst(wireName: r'remote_download')
  static const TaskResponseTypeEnum remoteDownload = _$taskResponseTypeEnum_remoteDownload;
  @BuiltValueEnumConst(wireName: r'import')
  static const TaskResponseTypeEnum import_ = _$taskResponseTypeEnum_import_;

  static Serializer<TaskResponseTypeEnum> get serializer => _$taskResponseTypeEnumSerializer;

  const TaskResponseTypeEnum._(String name): super(name);

  static BuiltSet<TaskResponseTypeEnum> get values => _$taskResponseTypeEnumValues;
  static TaskResponseTypeEnum valueOf(String name) => _$taskResponseTypeEnumValueOf(name);
}

