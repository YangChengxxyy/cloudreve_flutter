//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'passkey.g.dart';

/// Passkey
///
/// Properties:
/// * [id] - ID of the passkey.
/// * [name] - Name of the passkey platform.
/// * [usedAt] - Datetime when the passkey is lastly used.
/// * [createdAt] - Datetime when the passkey is created.
@BuiltValue()
abstract class Passkey implements Built<Passkey, PasskeyBuilder> {
  /// ID of the passkey.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Name of the passkey platform.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Datetime when the passkey is lastly used.
  @BuiltValueField(wireName: r'used_at')
  DateTime? get usedAt;

  /// Datetime when the passkey is created.
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  Passkey._();

  factory Passkey([void updates(PasskeyBuilder b)]) = _$Passkey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PasskeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Passkey> get serializer => _$PasskeySerializer();
}

class _$PasskeySerializer implements PrimitiveSerializer<Passkey> {
  @override
  final Iterable<Type> types = const [Passkey, _$Passkey];

  @override
  final String wireName = r'Passkey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Passkey object, {
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
    if (object.usedAt != null) {
      yield r'used_at';
      yield serializers.serialize(
        object.usedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Passkey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PasskeyBuilder result,
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
        case r'used_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.usedAt = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Passkey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PasskeyBuilder();
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

