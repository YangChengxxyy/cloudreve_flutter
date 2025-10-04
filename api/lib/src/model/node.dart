//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node.g.dart';

/// Node
///
/// Properties:
/// * [id] - ID of the node.
/// * [name] - Name of the node.
/// * [type] - Type of the node.
/// * [capabilities] - [Boolset](https://docs.cloudreve.org/en/api/boolset) encoded node capabilities.
@BuiltValue()
abstract class Node implements Built<Node, NodeBuilder> {
  /// ID of the node.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Name of the node.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Type of the node.
  @BuiltValueField(wireName: r'type')
  NodeTypeEnum get type;
  // enum typeEnum {  master,  slave,  };

  /// [Boolset](https://docs.cloudreve.org/en/api/boolset) encoded node capabilities.
  @BuiltValueField(wireName: r'capabilities')
  String get capabilities;

  Node._();

  factory Node([void updates(NodeBuilder b)]) = _$Node;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Node> get serializer => _$NodeSerializer();
}

class _$NodeSerializer implements PrimitiveSerializer<Node> {
  @override
  final Iterable<Type> types = const [Node, _$Node];

  @override
  final String wireName = r'Node';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Node object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(NodeTypeEnum),
    );
    yield r'capabilities';
    yield serializers.serialize(
      object.capabilities,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Node object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NodeBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NodeTypeEnum),
          ) as NodeTypeEnum;
          result.type = valueDes;
          break;
        case r'capabilities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.capabilities = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Node deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NodeBuilder();
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

class NodeTypeEnum extends EnumClass {

  /// Type of the node.
  @BuiltValueEnumConst(wireName: r'master')
  static const NodeTypeEnum master = _$nodeTypeEnum_master;
  /// Type of the node.
  @BuiltValueEnumConst(wireName: r'slave')
  static const NodeTypeEnum slave = _$nodeTypeEnum_slave;

  static Serializer<NodeTypeEnum> get serializer => _$nodeTypeEnumSerializer;

  const NodeTypeEnum._(String name): super(name);

  static BuiltSet<NodeTypeEnum> get values => _$nodeTypeEnumValues;
  static NodeTypeEnum valueOf(String name) => _$nodeTypeEnumValueOf(name);
}

