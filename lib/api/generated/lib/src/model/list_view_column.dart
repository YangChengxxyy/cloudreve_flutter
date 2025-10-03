//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/list_view_column_props.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_view_column.g.dart';

/// ListViewColumn
///
/// Properties:
/// * [type] - Column type ID, predefined in [Column.tsx](https://github.com/cloudreve/frontend/blob/master/src/component/FileManager/Explorer/ListView/Column.tsx).
/// * [width] - Width of the column in px. Default width will be used for null value.
/// * [props] 
@BuiltValue()
abstract class ListViewColumn implements Built<ListViewColumn, ListViewColumnBuilder> {
  /// Column type ID, predefined in [Column.tsx](https://github.com/cloudreve/frontend/blob/master/src/component/FileManager/Explorer/ListView/Column.tsx).
  @BuiltValueField(wireName: r'type')
  int get type;

  /// Width of the column in px. Default width will be used for null value.
  @BuiltValueField(wireName: r'width')
  int? get width;

  @BuiltValueField(wireName: r'props')
  ListViewColumnProps? get props;

  ListViewColumn._();

  factory ListViewColumn([void updates(ListViewColumnBuilder b)]) = _$ListViewColumn;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListViewColumnBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListViewColumn> get serializer => _$ListViewColumnSerializer();
}

class _$ListViewColumnSerializer implements PrimitiveSerializer<ListViewColumn> {
  @override
  final Iterable<Type> types = const [ListViewColumn, _$ListViewColumn];

  @override
  final String wireName = r'ListViewColumn';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListViewColumn object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(int),
    );
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.props != null) {
      yield r'props';
      yield serializers.serialize(
        object.props,
        specifiedType: const FullType.nullable(ListViewColumnProps),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListViewColumn object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListViewColumnBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.type = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.width = valueDes;
          break;
        case r'props':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ListViewColumnProps),
          ) as ListViewColumnProps?;
          if (valueDes == null) continue;
          result.props.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListViewColumn deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListViewColumnBuilder();
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

