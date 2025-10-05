//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/user_payments_get200_response_data_pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/payment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_payments_get200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
///
/// Properties:
/// * [pagination] 
/// * [payments] 
@BuiltValue()
abstract class UserPaymentsGet200ResponseData implements Built<UserPaymentsGet200ResponseData, UserPaymentsGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'pagination')
  UserPaymentsGet200ResponseDataPagination? get pagination;

  @BuiltValueField(wireName: r'payments')
  BuiltList<Payment>? get payments;

  UserPaymentsGet200ResponseData._();

  factory UserPaymentsGet200ResponseData([void updates(UserPaymentsGet200ResponseDataBuilder b)]) = _$UserPaymentsGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserPaymentsGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserPaymentsGet200ResponseData> get serializer => _$UserPaymentsGet200ResponseDataSerializer();
}

class _$UserPaymentsGet200ResponseDataSerializer implements PrimitiveSerializer<UserPaymentsGet200ResponseData> {
  @override
  final Iterable<Type> types = const [UserPaymentsGet200ResponseData, _$UserPaymentsGet200ResponseData];

  @override
  final String wireName = r'UserPaymentsGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserPaymentsGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pagination != null) {
      yield r'pagination';
      yield serializers.serialize(
        object.pagination,
        specifiedType: const FullType(UserPaymentsGet200ResponseDataPagination),
      );
    }
    if (object.payments != null) {
      yield r'payments';
      yield serializers.serialize(
        object.payments,
        specifiedType: const FullType(BuiltList, [FullType(Payment)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserPaymentsGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserPaymentsGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserPaymentsGet200ResponseDataPagination),
          ) as UserPaymentsGet200ResponseDataPagination;
          result.pagination.replace(valueDes);
          break;
        case r'payments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Payment)]),
          ) as BuiltList<Payment>;
          result.payments.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserPaymentsGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserPaymentsGet200ResponseDataBuilder();
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

