//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/task_list_response_pagination.dart';
import 'package:cloudreve_api_client/src/model/task_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_list_response.g.dart';

/// TaskListResponse
///
/// Properties:
/// * [pagination] 
/// * [tasks] 
@BuiltValue()
abstract class TaskListResponse implements Built<TaskListResponse, TaskListResponseBuilder> {
  @BuiltValueField(wireName: r'pagination')
  TaskListResponsePagination? get pagination;

  @BuiltValueField(wireName: r'tasks')
  BuiltList<TaskResponse>? get tasks;

  TaskListResponse._();

  factory TaskListResponse([void updates(TaskListResponseBuilder b)]) = _$TaskListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaskListResponse> get serializer => _$TaskListResponseSerializer();
}

class _$TaskListResponseSerializer implements PrimitiveSerializer<TaskListResponse> {
  @override
  final Iterable<Type> types = const [TaskListResponse, _$TaskListResponse];

  @override
  final String wireName = r'TaskListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaskListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pagination != null) {
      yield r'pagination';
      yield serializers.serialize(
        object.pagination,
        specifiedType: const FullType(TaskListResponsePagination),
      );
    }
    if (object.tasks != null) {
      yield r'tasks';
      yield serializers.serialize(
        object.tasks,
        specifiedType: const FullType(BuiltList, [FullType(TaskResponse)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TaskListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TaskListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TaskListResponsePagination),
          ) as TaskListResponsePagination;
          result.pagination.replace(valueDes);
          break;
        case r'tasks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TaskResponse)]),
          ) as BuiltList<TaskResponse>;
          result.tasks.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaskListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskListResponseBuilder();
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

