//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_sku.g.dart';

/// GroupSKU
///
/// Properties:
/// * [id] - UUID of the membership SKU.
/// * [name] - Name of the membership SKU.
/// * [time] - Valid duration of the membership SKU.
/// * [price] - Price in minimum currency unit.
/// * [chip] - Chip text.
/// * [points] - Price in points. Empty value indicate paying with points is disabled.
/// * [des] - Description texts.
@BuiltValue()
abstract class GroupSKU implements Built<GroupSKU, GroupSKUBuilder> {
  /// UUID of the membership SKU.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Name of the membership SKU.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Valid duration of the membership SKU.
  @BuiltValueField(wireName: r'time')
  int? get time;

  /// Price in minimum currency unit.
  @BuiltValueField(wireName: r'price')
  int? get price;

  /// Chip text.
  @BuiltValueField(wireName: r'chip')
  String? get chip;

  /// Price in points. Empty value indicate paying with points is disabled.
  @BuiltValueField(wireName: r'points')
  int? get points;

  /// Description texts.
  @BuiltValueField(wireName: r'des')
  BuiltList<String>? get des;

  GroupSKU._();

  factory GroupSKU([void updates(GroupSKUBuilder b)]) = _$GroupSKU;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupSKUBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupSKU> get serializer => _$GroupSKUSerializer();
}

class _$GroupSKUSerializer implements PrimitiveSerializer<GroupSKU> {
  @override
  final Iterable<Type> types = const [GroupSKU, _$GroupSKU];

  @override
  final String wireName = r'GroupSKU';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupSKU object, {
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
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(int),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(int),
      );
    }
    if (object.chip != null) {
      yield r'chip';
      yield serializers.serialize(
        object.chip,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.points != null) {
      yield r'points';
      yield serializers.serialize(
        object.points,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.des != null) {
      yield r'des';
      yield serializers.serialize(
        object.des,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupSKU object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupSKUBuilder result,
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
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.time = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.price = valueDes;
          break;
        case r'chip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chip = valueDes;
          break;
        case r'points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.points = valueDes;
          break;
        case r'des':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.des.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupSKU deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupSKUBuilder();
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

