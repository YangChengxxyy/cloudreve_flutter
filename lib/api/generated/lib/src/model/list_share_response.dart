//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/share.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/list_share_response_pagination.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_share_response.g.dart';

/// ListShareResponse
///
/// Properties:
/// * [shares] - List of share links.
/// * [pagination] 
@BuiltValue()
abstract class ListShareResponse implements Built<ListShareResponse, ListShareResponseBuilder> {
  /// List of share links.
  @BuiltValueField(wireName: r'shares')
  BuiltList<Share> get shares;

  @BuiltValueField(wireName: r'pagination')
  ListShareResponsePagination get pagination;

  ListShareResponse._();

  factory ListShareResponse([void updates(ListShareResponseBuilder b)]) = _$ListShareResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListShareResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListShareResponse> get serializer => _$ListShareResponseSerializer();
}

class _$ListShareResponseSerializer implements PrimitiveSerializer<ListShareResponse> {
  @override
  final Iterable<Type> types = const [ListShareResponse, _$ListShareResponse];

  @override
  final String wireName = r'ListShareResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListShareResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'shares';
    yield serializers.serialize(
      object.shares,
      specifiedType: const FullType(BuiltList, [FullType(Share)]),
    );
    yield r'pagination';
    yield serializers.serialize(
      object.pagination,
      specifiedType: const FullType(ListShareResponsePagination),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListShareResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListShareResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'shares':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Share)]),
          ) as BuiltList<Share>;
          result.shares.replace(valueDes);
          break;
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ListShareResponsePagination),
          ) as ListShareResponsePagination;
          result.pagination.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListShareResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListShareResponseBuilder();
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

