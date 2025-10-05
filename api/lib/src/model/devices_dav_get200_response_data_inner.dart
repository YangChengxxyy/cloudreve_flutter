//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/dav_account.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/devices_dav_get200_response_data_inner_pagination.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'devices_dav_get200_response_data_inner.g.dart';

/// DevicesDavGet200ResponseDataInner
///
/// Properties:
/// * [pagination] 
/// * [accounts] - List of WebDAV accounts.
@BuiltValue()
abstract class DevicesDavGet200ResponseDataInner implements Built<DevicesDavGet200ResponseDataInner, DevicesDavGet200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'pagination')
  DevicesDavGet200ResponseDataInnerPagination? get pagination;

  /// List of WebDAV accounts.
  @BuiltValueField(wireName: r'accounts')
  BuiltList<DavAccount>? get accounts;

  DevicesDavGet200ResponseDataInner._();

  factory DevicesDavGet200ResponseDataInner([void updates(DevicesDavGet200ResponseDataInnerBuilder b)]) = _$DevicesDavGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DevicesDavGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DevicesDavGet200ResponseDataInner> get serializer => _$DevicesDavGet200ResponseDataInnerSerializer();
}

class _$DevicesDavGet200ResponseDataInnerSerializer implements PrimitiveSerializer<DevicesDavGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [DevicesDavGet200ResponseDataInner, _$DevicesDavGet200ResponseDataInner];

  @override
  final String wireName = r'DevicesDavGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DevicesDavGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pagination != null) {
      yield r'pagination';
      yield serializers.serialize(
        object.pagination,
        specifiedType: const FullType(DevicesDavGet200ResponseDataInnerPagination),
      );
    }
    if (object.accounts != null) {
      yield r'accounts';
      yield serializers.serialize(
        object.accounts,
        specifiedType: const FullType(BuiltList, [FullType(DavAccount)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DevicesDavGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DevicesDavGet200ResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DevicesDavGet200ResponseDataInnerPagination),
          ) as DevicesDavGet200ResponseDataInnerPagination;
          result.pagination.replace(valueDes);
          break;
        case r'accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DavAccount)]),
          ) as BuiltList<DavAccount>;
          result.accounts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DevicesDavGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DevicesDavGet200ResponseDataInnerBuilder();
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

