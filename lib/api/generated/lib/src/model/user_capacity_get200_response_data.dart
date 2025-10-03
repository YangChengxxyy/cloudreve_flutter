//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_capacity_get200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
///
/// Properties:
/// * [total] - Total storage capacity in bytes.
/// * [used] - Currently used storage in bytes.
/// * [storagePackTotal] - Available storage packs in bytes. Ony presented in Pro edition.
@BuiltValue()
abstract class UserCapacityGet200ResponseData implements Built<UserCapacityGet200ResponseData, UserCapacityGet200ResponseDataBuilder> {
  /// Total storage capacity in bytes.
  @BuiltValueField(wireName: r'total')
  int get total;

  /// Currently used storage in bytes.
  @BuiltValueField(wireName: r'used')
  int get used;

  /// Available storage packs in bytes. Ony presented in Pro edition.
  @BuiltValueField(wireName: r'storage_pack_total')
  int get storagePackTotal;

  UserCapacityGet200ResponseData._();

  factory UserCapacityGet200ResponseData([void updates(UserCapacityGet200ResponseDataBuilder b)]) = _$UserCapacityGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserCapacityGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserCapacityGet200ResponseData> get serializer => _$UserCapacityGet200ResponseDataSerializer();
}

class _$UserCapacityGet200ResponseDataSerializer implements PrimitiveSerializer<UserCapacityGet200ResponseData> {
  @override
  final Iterable<Type> types = const [UserCapacityGet200ResponseData, _$UserCapacityGet200ResponseData];

  @override
  final String wireName = r'UserCapacityGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserCapacityGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'used';
    yield serializers.serialize(
      object.used,
      specifiedType: const FullType(int),
    );
    yield r'storage_pack_total';
    yield serializers.serialize(
      object.storagePackTotal,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserCapacityGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserCapacityGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'used':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.used = valueDes;
          break;
        case r'storage_pack_total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.storagePackTotal = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserCapacityGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserCapacityGet200ResponseDataBuilder();
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

