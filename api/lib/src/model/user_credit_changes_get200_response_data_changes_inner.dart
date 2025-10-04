//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_credit_changes_get200_response_data_changes_inner.g.dart';

/// UserCreditChangesGet200ResponseDataChangesInner
///
/// Properties:
/// * [changedAt] - Datetime when the event occurs.
/// * [diff] - Credit changed.
/// * [reason] - Reason of the change.
@BuiltValue()
abstract class UserCreditChangesGet200ResponseDataChangesInner implements Built<UserCreditChangesGet200ResponseDataChangesInner, UserCreditChangesGet200ResponseDataChangesInnerBuilder> {
  /// Datetime when the event occurs.
  @BuiltValueField(wireName: r'changed_at')
  DateTime get changedAt;

  /// Credit changed.
  @BuiltValueField(wireName: r'diff')
  int get diff;

  /// Reason of the change.
  @BuiltValueField(wireName: r'reason')
  String get reason;

  UserCreditChangesGet200ResponseDataChangesInner._();

  factory UserCreditChangesGet200ResponseDataChangesInner([void updates(UserCreditChangesGet200ResponseDataChangesInnerBuilder b)]) = _$UserCreditChangesGet200ResponseDataChangesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserCreditChangesGet200ResponseDataChangesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserCreditChangesGet200ResponseDataChangesInner> get serializer => _$UserCreditChangesGet200ResponseDataChangesInnerSerializer();
}

class _$UserCreditChangesGet200ResponseDataChangesInnerSerializer implements PrimitiveSerializer<UserCreditChangesGet200ResponseDataChangesInner> {
  @override
  final Iterable<Type> types = const [UserCreditChangesGet200ResponseDataChangesInner, _$UserCreditChangesGet200ResponseDataChangesInner];

  @override
  final String wireName = r'UserCreditChangesGet200ResponseDataChangesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserCreditChangesGet200ResponseDataChangesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'changed_at';
    yield serializers.serialize(
      object.changedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'diff';
    yield serializers.serialize(
      object.diff,
      specifiedType: const FullType(int),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserCreditChangesGet200ResponseDataChangesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserCreditChangesGet200ResponseDataChangesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'changed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.changedAt = valueDes;
          break;
        case r'diff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.diff = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserCreditChangesGet200ResponseDataChangesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserCreditChangesGet200ResponseDataChangesInnerBuilder();
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

