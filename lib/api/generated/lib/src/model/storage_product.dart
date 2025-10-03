//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_product.g.dart';

/// StorageProduct
///
/// Properties:
/// * [id] - UUID of the storage SKU.
/// * [name] - Display name of the storage SKU.
/// * [size] - Contained storage in bytes.
/// * [time] - Valid duration in seconds.
/// * [price] - Price in minimum currency unit.
/// * [chip] - Chip text.
/// * [points] - Price in points. Empty value indicate paying with points is disabled.
@BuiltValue()
abstract class StorageProduct implements Built<StorageProduct, StorageProductBuilder> {
  /// UUID of the storage SKU.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Display name of the storage SKU.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Contained storage in bytes.
  @BuiltValueField(wireName: r'size')
  int get size;

  /// Valid duration in seconds.
  @BuiltValueField(wireName: r'time')
  int get time;

  /// Price in minimum currency unit.
  @BuiltValueField(wireName: r'price')
  int get price;

  /// Chip text.
  @BuiltValueField(wireName: r'chip')
  String? get chip;

  /// Price in points. Empty value indicate paying with points is disabled.
  @BuiltValueField(wireName: r'points')
  int? get points;

  StorageProduct._();

  factory StorageProduct([void updates(StorageProductBuilder b)]) = _$StorageProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StorageProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StorageProduct> get serializer => _$StorageProductSerializer();
}

class _$StorageProductSerializer implements PrimitiveSerializer<StorageProduct> {
  @override
  final Iterable<Type> types = const [StorageProduct, _$StorageProduct];

  @override
  final String wireName = r'StorageProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StorageProduct object, {
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
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(int),
    );
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(int),
    );
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(int),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    StorageProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StorageProductBuilder result,
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
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StorageProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageProductBuilder();
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

