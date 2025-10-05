//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_list_get200_response_data_inner.g.dart';

/// GroupListGet200ResponseDataInner
///
/// Properties:
/// * [id] - ID of the group.
/// * [name] - Name of the group.
@BuiltValue()
abstract class GroupListGet200ResponseDataInner implements Built<GroupListGet200ResponseDataInner, GroupListGet200ResponseDataInnerBuilder> {
  /// ID of the group.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Name of the group.
  @BuiltValueField(wireName: r'name')
  String? get name;

  GroupListGet200ResponseDataInner._();

  factory GroupListGet200ResponseDataInner([void updates(GroupListGet200ResponseDataInnerBuilder b)]) = _$GroupListGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupListGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupListGet200ResponseDataInner> get serializer => _$GroupListGet200ResponseDataInnerSerializer();
}

class _$GroupListGet200ResponseDataInnerSerializer implements PrimitiveSerializer<GroupListGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [GroupListGet200ResponseDataInner, _$GroupListGet200ResponseDataInner];

  @override
  final String wireName = r'GroupListGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupListGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupListGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupListGet200ResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupListGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupListGet200ResponseDataInnerBuilder();
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

