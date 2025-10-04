//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_activities_response_pagination.g.dart';

/// FileActivitiesResponsePagination
///
/// Properties:
/// * [page] - Current page starting from `0`, only applied to offset pagination.
/// * [pageSize] - Maximum items included in one page.
/// * [nextToken] - Token used to request the next page in cursor pagination.
/// * [isCursor] - Whether the response is using cursor pagination.
@BuiltValue()
abstract class FileActivitiesResponsePagination implements Built<FileActivitiesResponsePagination, FileActivitiesResponsePaginationBuilder> {
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

  FileActivitiesResponsePagination._();

  factory FileActivitiesResponsePagination([void updates(FileActivitiesResponsePaginationBuilder b)]) = _$FileActivitiesResponsePagination;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileActivitiesResponsePaginationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileActivitiesResponsePagination> get serializer => _$FileActivitiesResponsePaginationSerializer();
}

class _$FileActivitiesResponsePaginationSerializer implements PrimitiveSerializer<FileActivitiesResponsePagination> {
  @override
  final Iterable<Type> types = const [FileActivitiesResponsePagination, _$FileActivitiesResponsePagination];

  @override
  final String wireName = r'FileActivitiesResponsePagination';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileActivitiesResponsePagination object, {
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
    FileActivitiesResponsePagination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileActivitiesResponsePaginationBuilder result,
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
  FileActivitiesResponsePagination deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileActivitiesResponsePaginationBuilder();
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

