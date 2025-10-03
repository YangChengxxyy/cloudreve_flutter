//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/activity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/file_activities_response_pagination.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_activities_response.g.dart';

/// FileActivitiesResponse
///
/// Properties:
/// * [activities] 
/// * [pagination] 
@BuiltValue()
abstract class FileActivitiesResponse implements Built<FileActivitiesResponse, FileActivitiesResponseBuilder> {
  @BuiltValueField(wireName: r'activities')
  BuiltList<Activity> get activities;

  @BuiltValueField(wireName: r'pagination')
  FileActivitiesResponsePagination get pagination;

  FileActivitiesResponse._();

  factory FileActivitiesResponse([void updates(FileActivitiesResponseBuilder b)]) = _$FileActivitiesResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileActivitiesResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileActivitiesResponse> get serializer => _$FileActivitiesResponseSerializer();
}

class _$FileActivitiesResponseSerializer implements PrimitiveSerializer<FileActivitiesResponse> {
  @override
  final Iterable<Type> types = const [FileActivitiesResponse, _$FileActivitiesResponse];

  @override
  final String wireName = r'FileActivitiesResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileActivitiesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'activities';
    yield serializers.serialize(
      object.activities,
      specifiedType: const FullType(BuiltList, [FullType(Activity)]),
    );
    yield r'pagination';
    yield serializers.serialize(
      object.pagination,
      specifiedType: const FullType(FileActivitiesResponsePagination),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FileActivitiesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileActivitiesResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'activities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Activity)]),
          ) as BuiltList<Activity>;
          result.activities.replace(valueDes);
          break;
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FileActivitiesResponsePagination),
          ) as FileActivitiesResponsePagination;
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
  FileActivitiesResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileActivitiesResponseBuilder();
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

