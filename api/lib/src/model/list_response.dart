//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/file_response.dart';
import 'package:cloudreve_api_client/src/model/storage_policy.dart';
import 'package:cloudreve_api_client/src/model/explorer_view.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/navigator_props.dart';
import 'package:cloudreve_api_client/src/model/pagination_results.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_response.g.dart';

/// ListResponse
///
/// Properties:
/// * [files] - List of files.
/// * [parent] 
/// * [pagination] 
/// * [props] 
/// * [contextHint] - ContextHint is used to speed up following operations under this listed directory. It persists some intermedia state so that the following request don't need to query database again. One typical case is loading thumbnails under the listed folder, carry context hint in `X-Cr-Context-Hint` header in the thumbnail request can speed up backend database operations.
/// * [recursionLimitReached] - Only applies to search list, indicating whether the recursion limit has been reached. Client side should suggest user narrow down search root folder in this case.
/// * [mixedType] - If it's `false`, folders is alway placed in front of the file list. If it's `true`, folders might be mixed with files in the list. Cloudreve will try its best not to mix file types, but in search result list, this value is `false`.
/// * [singleFileView] - Indicating the frontend UI should use \"Single share file\" UI, since there's only one file in single file share link.
/// * [storagePolicy] 
/// * [view] 
@BuiltValue()
abstract class ListResponse implements Built<ListResponse, ListResponseBuilder> {
  /// List of files.
  @BuiltValueField(wireName: r'files')
  BuiltList<FileResponse> get files;

  @BuiltValueField(wireName: r'parent')
  FileResponse get parent;

  @BuiltValueField(wireName: r'pagination')
  PaginationResults get pagination;

  @BuiltValueField(wireName: r'props')
  NavigatorProps get props;

  /// ContextHint is used to speed up following operations under this listed directory. It persists some intermedia state so that the following request don't need to query database again. One typical case is loading thumbnails under the listed folder, carry context hint in `X-Cr-Context-Hint` header in the thumbnail request can speed up backend database operations.
  @BuiltValueField(wireName: r'context_hint')
  String get contextHint;

  /// Only applies to search list, indicating whether the recursion limit has been reached. Client side should suggest user narrow down search root folder in this case.
  @BuiltValueField(wireName: r'recursion_limit_reached')
  bool? get recursionLimitReached;

  /// If it's `false`, folders is alway placed in front of the file list. If it's `true`, folders might be mixed with files in the list. Cloudreve will try its best not to mix file types, but in search result list, this value is `false`.
  @BuiltValueField(wireName: r'mixed_type')
  bool get mixedType;

  /// Indicating the frontend UI should use \"Single share file\" UI, since there's only one file in single file share link.
  @BuiltValueField(wireName: r'single_file_view')
  bool? get singleFileView;

  @BuiltValueField(wireName: r'storage_policy')
  StoragePolicy? get storagePolicy;

  @BuiltValueField(wireName: r'view')
  ExplorerView? get view;

  ListResponse._();

  factory ListResponse([void updates(ListResponseBuilder b)]) = _$ListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListResponse> get serializer => _$ListResponseSerializer();
}

class _$ListResponseSerializer implements PrimitiveSerializer<ListResponse> {
  @override
  final Iterable<Type> types = const [ListResponse, _$ListResponse];

  @override
  final String wireName = r'ListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'files';
    yield serializers.serialize(
      object.files,
      specifiedType: const FullType(BuiltList, [FullType(FileResponse)]),
    );
    yield r'parent';
    yield serializers.serialize(
      object.parent,
      specifiedType: const FullType(FileResponse),
    );
    yield r'pagination';
    yield serializers.serialize(
      object.pagination,
      specifiedType: const FullType(PaginationResults),
    );
    yield r'props';
    yield serializers.serialize(
      object.props,
      specifiedType: const FullType(NavigatorProps),
    );
    yield r'context_hint';
    yield serializers.serialize(
      object.contextHint,
      specifiedType: const FullType(String),
    );
    if (object.recursionLimitReached != null) {
      yield r'recursion_limit_reached';
      yield serializers.serialize(
        object.recursionLimitReached,
        specifiedType: const FullType.nullable(bool),
      );
    }
    yield r'mixed_type';
    yield serializers.serialize(
      object.mixedType,
      specifiedType: const FullType(bool),
    );
    if (object.singleFileView != null) {
      yield r'single_file_view';
      yield serializers.serialize(
        object.singleFileView,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.storagePolicy != null) {
      yield r'storage_policy';
      yield serializers.serialize(
        object.storagePolicy,
        specifiedType: const FullType(StoragePolicy),
      );
    }
    if (object.view != null) {
      yield r'view';
      yield serializers.serialize(
        object.view,
        specifiedType: const FullType(ExplorerView),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'files':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FileResponse)]),
          ) as BuiltList<FileResponse>;
          result.files.replace(valueDes);
          break;
        case r'parent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FileResponse),
          ) as FileResponse;
          result.parent.replace(valueDes);
          break;
        case r'pagination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaginationResults),
          ) as PaginationResults;
          result.pagination.replace(valueDes);
          break;
        case r'props':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NavigatorProps),
          ) as NavigatorProps;
          result.props.replace(valueDes);
          break;
        case r'context_hint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contextHint = valueDes;
          break;
        case r'recursion_limit_reached':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.recursionLimitReached = valueDes;
          break;
        case r'mixed_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.mixedType = valueDes;
          break;
        case r'single_file_view':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.singleFileView = valueDes;
          break;
        case r'storage_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StoragePolicy),
          ) as StoragePolicy;
          result.storagePolicy.replace(valueDes);
          break;
        case r'view':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExplorerView),
          ) as ExplorerView;
          result.view.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListResponseBuilder();
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

