//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/user_credit_changes_get200_response_data_changes_inner.dart';
import 'package:cloudreve_api_client/src/model/user_credit_changes_get200_response_data_pagination.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_credit_changes_get200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
///
/// Properties:
/// * [pagination] 
/// * [changes] 
@BuiltValue()
abstract class UserCreditChangesGet200ResponseData implements Built<UserCreditChangesGet200ResponseData, UserCreditChangesGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'pagination')
  UserCreditChangesGet200ResponseDataPagination? get pagination;

  @BuiltValueField(wireName: r'changes')
  BuiltList<UserCreditChangesGet200ResponseDataChangesInner>? get changes;

  UserCreditChangesGet200ResponseData._();

  factory UserCreditChangesGet200ResponseData([void updates(UserCreditChangesGet200ResponseDataBuilder b)]) = _$UserCreditChangesGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserCreditChangesGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserCreditChangesGet200ResponseData> get serializer => _$UserCreditChangesGet200ResponseDataSerializer();
}

class _$UserCreditChangesGet200ResponseDataSerializer implements PrimitiveSerializer<UserCreditChangesGet200ResponseData> {
  @override
  final Iterable<Type> types = const [UserCreditChangesGet200ResponseData, _$UserCreditChangesGet200ResponseData];

  @override
  final String wireName = r'UserCreditChangesGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserCreditChangesGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pagination != null) {
      yield r'pagination';
      yield serializers.serialize(
        object.pagination,
        specifiedType: const FullType(UserCreditChangesGet200ResponseDataPagination),
      );
    }
    if (object.changes != null) {
      yield r'changes';
      yield serializers.serialize(
        object.changes,
        specifiedType: const FullType(BuiltList, [FullType(UserCreditChangesGet200ResponseDataChangesInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserCreditChangesGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserCreditChangesGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserCreditChangesGet200ResponseDataPagination),
          ) as UserCreditChangesGet200ResponseDataPagination;
          result.pagination.replace(valueDes);
          break;
        case r'changes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserCreditChangesGet200ResponseDataChangesInner)]),
          ) as BuiltList<UserCreditChangesGet200ResponseDataChangesInner>;
          result.changes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserCreditChangesGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserCreditChangesGet200ResponseDataBuilder();
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

