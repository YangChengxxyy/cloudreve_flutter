//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_reloacte_post_request.g.dart';

/// WorkflowReloactePostRequest
///
/// Properties:
/// * [src] - URI of files or folders to be relocated.
/// * [dstPolicyId] 
@BuiltValue()
abstract class WorkflowReloactePostRequest implements Built<WorkflowReloactePostRequest, WorkflowReloactePostRequestBuilder> {
  /// URI of files or folders to be relocated.
  @BuiltValueField(wireName: r'src')
  BuiltList<String>? get src;

  @BuiltValueField(wireName: r'dst_policy_id')
  String? get dstPolicyId;

  WorkflowReloactePostRequest._();

  factory WorkflowReloactePostRequest([void updates(WorkflowReloactePostRequestBuilder b)]) = _$WorkflowReloactePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkflowReloactePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkflowReloactePostRequest> get serializer => _$WorkflowReloactePostRequestSerializer();
}

class _$WorkflowReloactePostRequestSerializer implements PrimitiveSerializer<WorkflowReloactePostRequest> {
  @override
  final Iterable<Type> types = const [WorkflowReloactePostRequest, _$WorkflowReloactePostRequest];

  @override
  final String wireName = r'WorkflowReloactePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkflowReloactePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.src != null) {
      yield r'src';
      yield serializers.serialize(
        object.src,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.dstPolicyId != null) {
      yield r'dst_policy_id';
      yield serializers.serialize(
        object.dstPolicyId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkflowReloactePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkflowReloactePostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'src':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.src.replace(valueDes);
          break;
        case r'dst_policy_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dstPolicyId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkflowReloactePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkflowReloactePostRequestBuilder();
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

