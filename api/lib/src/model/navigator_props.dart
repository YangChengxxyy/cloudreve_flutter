//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'navigator_props.g.dart';

/// NavigatorProps
///
/// Properties:
/// * [capability] - [Boolset](https://docs.cloudreve.org/api/boolset) encoded set of capabilities supported in this filesystem. Capability definition can be found at [File System Capabilities](https://docs.cloudreve.org/api/boolset#file-system-capability)
/// * [maxPageSize] - Max supported page size.
/// * [orderByOptions] - List of supported `order by` fields.
/// * [orderDirectionOptions] - List of supported order direction.
@BuiltValue()
abstract class NavigatorProps implements Built<NavigatorProps, NavigatorPropsBuilder> {
  /// [Boolset](https://docs.cloudreve.org/api/boolset) encoded set of capabilities supported in this filesystem. Capability definition can be found at [File System Capabilities](https://docs.cloudreve.org/api/boolset#file-system-capability)
  @BuiltValueField(wireName: r'capability')
  String? get capability;

  /// Max supported page size.
  @BuiltValueField(wireName: r'max_page_size')
  int? get maxPageSize;

  /// List of supported `order by` fields.
  @BuiltValueField(wireName: r'order_by_options')
  BuiltList<String>? get orderByOptions;

  /// List of supported order direction.
  @BuiltValueField(wireName: r'order_direction_options')
  BuiltList<String>? get orderDirectionOptions;

  NavigatorProps._();

  factory NavigatorProps([void updates(NavigatorPropsBuilder b)]) = _$NavigatorProps;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NavigatorPropsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NavigatorProps> get serializer => _$NavigatorPropsSerializer();
}

class _$NavigatorPropsSerializer implements PrimitiveSerializer<NavigatorProps> {
  @override
  final Iterable<Type> types = const [NavigatorProps, _$NavigatorProps];

  @override
  final String wireName = r'NavigatorProps';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NavigatorProps object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.capability != null) {
      yield r'capability';
      yield serializers.serialize(
        object.capability,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxPageSize != null) {
      yield r'max_page_size';
      yield serializers.serialize(
        object.maxPageSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.orderByOptions != null) {
      yield r'order_by_options';
      yield serializers.serialize(
        object.orderByOptions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.orderDirectionOptions != null) {
      yield r'order_direction_options';
      yield serializers.serialize(
        object.orderDirectionOptions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NavigatorProps object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NavigatorPropsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'capability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.capability = valueDes;
          break;
        case r'max_page_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxPageSize = valueDes;
          break;
        case r'order_by_options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.orderByOptions.replace(valueDes);
          break;
        case r'order_direction_options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.orderDirectionOptions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NavigatorProps deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NavigatorPropsBuilder();
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

