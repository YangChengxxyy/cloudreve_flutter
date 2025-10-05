//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/list_view_column.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'explorer_view.g.dart';

/// ExplorerView
///
/// Properties:
/// * [pageSize] - The number of items to display per page.
/// * [order] - The field to order the results by.
/// * [orderDirection] - The direction to order the results.
/// * [view] - The view mode for the explorer.
/// * [thumbnail] - Whether to display thumbnails in grid view.
/// * [galleryWidth] - The width of a single item in gallery view.
/// * [columns] - The columns to display in the list view.
@BuiltValue()
abstract class ExplorerView implements Built<ExplorerView, ExplorerViewBuilder> {
  /// The number of items to display per page.
  @BuiltValueField(wireName: r'page_size')
  int? get pageSize;

  /// The field to order the results by.
  @BuiltValueField(wireName: r'order')
  String? get order;

  /// The direction to order the results.
  @BuiltValueField(wireName: r'order_direction')
  ExplorerViewOrderDirectionEnum? get orderDirection;
  // enum orderDirectionEnum {  asc,  desc,  };

  /// The view mode for the explorer.
  @BuiltValueField(wireName: r'view')
  ExplorerViewViewEnum? get view;
  // enum viewEnum {  list,  grid,  gallery,  };

  /// Whether to display thumbnails in grid view.
  @BuiltValueField(wireName: r'thumbnail')
  bool? get thumbnail;

  /// The width of a single item in gallery view.
  @BuiltValueField(wireName: r'gallery_width')
  int? get galleryWidth;

  /// The columns to display in the list view.
  @BuiltValueField(wireName: r'columns')
  BuiltList<ListViewColumn>? get columns;

  ExplorerView._();

  factory ExplorerView([void updates(ExplorerViewBuilder b)]) = _$ExplorerView;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExplorerViewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExplorerView> get serializer => _$ExplorerViewSerializer();
}

class _$ExplorerViewSerializer implements PrimitiveSerializer<ExplorerView> {
  @override
  final Iterable<Type> types = const [ExplorerView, _$ExplorerView];

  @override
  final String wireName = r'ExplorerView';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExplorerView object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pageSize != null) {
      yield r'page_size';
      yield serializers.serialize(
        object.pageSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderDirection != null) {
      yield r'order_direction';
      yield serializers.serialize(
        object.orderDirection,
        specifiedType: const FullType(ExplorerViewOrderDirectionEnum),
      );
    }
    if (object.view != null) {
      yield r'view';
      yield serializers.serialize(
        object.view,
        specifiedType: const FullType(ExplorerViewViewEnum),
      );
    }
    if (object.thumbnail != null) {
      yield r'thumbnail';
      yield serializers.serialize(
        object.thumbnail,
        specifiedType: const FullType(bool),
      );
    }
    if (object.galleryWidth != null) {
      yield r'gallery_width';
      yield serializers.serialize(
        object.galleryWidth,
        specifiedType: const FullType(int),
      );
    }
    if (object.columns != null) {
      yield r'columns';
      yield serializers.serialize(
        object.columns,
        specifiedType: const FullType(BuiltList, [FullType(ListViewColumn)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExplorerView object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExplorerViewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'page_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageSize = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.order = valueDes;
          break;
        case r'order_direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExplorerViewOrderDirectionEnum),
          ) as ExplorerViewOrderDirectionEnum;
          result.orderDirection = valueDes;
          break;
        case r'view':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExplorerViewViewEnum),
          ) as ExplorerViewViewEnum;
          result.view = valueDes;
          break;
        case r'thumbnail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.thumbnail = valueDes;
          break;
        case r'gallery_width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.galleryWidth = valueDes;
          break;
        case r'columns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ListViewColumn)]),
          ) as BuiltList<ListViewColumn>;
          result.columns.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExplorerView deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExplorerViewBuilder();
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

class ExplorerViewOrderDirectionEnum extends EnumClass {

  /// The direction to order the results.
  @BuiltValueEnumConst(wireName: r'asc')
  static const ExplorerViewOrderDirectionEnum asc = _$explorerViewOrderDirectionEnum_asc;
  /// The direction to order the results.
  @BuiltValueEnumConst(wireName: r'desc')
  static const ExplorerViewOrderDirectionEnum desc = _$explorerViewOrderDirectionEnum_desc;

  static Serializer<ExplorerViewOrderDirectionEnum> get serializer => _$explorerViewOrderDirectionEnumSerializer;

  const ExplorerViewOrderDirectionEnum._(String name): super(name);

  static BuiltSet<ExplorerViewOrderDirectionEnum> get values => _$explorerViewOrderDirectionEnumValues;
  static ExplorerViewOrderDirectionEnum valueOf(String name) => _$explorerViewOrderDirectionEnumValueOf(name);
}

class ExplorerViewViewEnum extends EnumClass {

  /// The view mode for the explorer.
  @BuiltValueEnumConst(wireName: r'list')
  static const ExplorerViewViewEnum list = _$explorerViewViewEnum_list;
  /// The view mode for the explorer.
  @BuiltValueEnumConst(wireName: r'grid')
  static const ExplorerViewViewEnum grid = _$explorerViewViewEnum_grid;
  /// The view mode for the explorer.
  @BuiltValueEnumConst(wireName: r'gallery')
  static const ExplorerViewViewEnum gallery = _$explorerViewViewEnum_gallery;

  static Serializer<ExplorerViewViewEnum> get serializer => _$explorerViewViewEnumSerializer;

  const ExplorerViewViewEnum._(String name): super(name);

  static BuiltSet<ExplorerViewViewEnum> get values => _$explorerViewViewEnumValues;
  static ExplorerViewViewEnum valueOf(String name) => _$explorerViewViewEnumValueOf(name);
}

