//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_response_summary.g.dart';

/// TaskResponseSummary
///
/// Properties:
/// * [phase] - Current phase(sub-step) of the task. The possible value differs from different task types.
/// * [props] - Key-value map of task specific props.
@BuiltValue()
abstract class TaskResponseSummary implements Built<TaskResponseSummary, TaskResponseSummaryBuilder> {
  /// Current phase(sub-step) of the task. The possible value differs from different task types.
  @BuiltValueField(wireName: r'phase')
  String get phase;

  /// Key-value map of task specific props.
  @BuiltValueField(wireName: r'props')
  BuiltMap<String, String> get props;

  TaskResponseSummary._();

  factory TaskResponseSummary([void updates(TaskResponseSummaryBuilder b)]) = _$TaskResponseSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskResponseSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaskResponseSummary> get serializer => _$TaskResponseSummarySerializer();
}

class _$TaskResponseSummarySerializer implements PrimitiveSerializer<TaskResponseSummary> {
  @override
  final Iterable<Type> types = const [TaskResponseSummary, _$TaskResponseSummary];

  @override
  final String wireName = r'TaskResponseSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaskResponseSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'phase';
    yield serializers.serialize(
      object.phase,
      specifiedType: const FullType(String),
    );
    yield r'props';
    yield serializers.serialize(
      object.props,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TaskResponseSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TaskResponseSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'phase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phase = valueDes;
          break;
        case r'props':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.props.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaskResponseSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskResponseSummaryBuilder();
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

