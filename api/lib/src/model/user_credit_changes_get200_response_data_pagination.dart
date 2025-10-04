//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_credit_changes_get200_response_data_pagination.g.dart';

/// UserCreditChangesGet200ResponseDataPagination
///
/// Properties:
/// * [page] - Current page starting from `0`, only applied to offset pagination.
/// * [pageSize] - Maximum items included in one page.
/// * [nextToken] - Token used to request the next page in cursor pagination.
/// * [isCursor] - Whether the response is using cursor pagination.
@BuiltValue()
abstract class UserCreditChangesGet200ResponseDataPagination implements Built<UserCreditChangesGet200ResponseDataPagination, UserCreditChangesGet200ResponseDataPaginationBuilder> {
  /// Current page starting from `0`, only applied to offset pagination.
  @BuiltValueField(wireName: r'page')
  int get page;

  /// Maximum items included in one page.
  @BuiltValueField(wireName: r'page_size')
  int get pageSize;

  /// Token used to request the next page in cursor pagination.
  @BuiltValueField(wireName: r'next_token')
  String get nextToken;

  /// Whether the response is using cursor pagination.
  @BuiltValueField(wireName: r'is_cursor')
  bool? get isCursor;

  UserCreditChangesGet200ResponseDataPagination._();

  factory UserCreditChangesGet200ResponseDataPagination([void updates(UserCreditChangesGet200ResponseDataPaginationBuilder b)]) = _$UserCreditChangesGet200ResponseDataPagination;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserCreditChangesGet200ResponseDataPaginationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserCreditChangesGet200ResponseDataPagination> get serializer => _$UserCreditChangesGet200ResponseDataPaginationSerializer();
}

class _$UserCreditChangesGet200ResponseDataPaginationSerializer implements PrimitiveSerializer<UserCreditChangesGet200ResponseDataPagination> {
  @override
  final Iterable<Type> types = const [UserCreditChangesGet200ResponseDataPagination, _$UserCreditChangesGet200ResponseDataPagination];

  @override
  final String wireName = r'UserCreditChangesGet200ResponseDataPagination';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserCreditChangesGet200ResponseDataPagination object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(int),
    );
    yield r'page_size';
    yield serializers.serialize(
      object.pageSize,
      specifiedType: const FullType(int),
    );
    yield r'next_token';
    yield serializers.serialize(
      object.nextToken,
      specifiedType: const FullType(String),
    );
    if (object.isCursor != null) {
      yield r'is_cursor';
      yield serializers.serialize(
        object.isCursor,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserCreditChangesGet200ResponseDataPagination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserCreditChangesGet200ResponseDataPaginationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'page_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageSize = valueDes;
          break;
        case r'next_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nextToken = valueDes;
          break;
        case r'is_cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserCreditChangesGet200ResponseDataPagination deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserCreditChangesGet200ResponseDataPaginationBuilder();
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

