//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_props.g.dart';

/// CustomProps
///
/// Properties:
/// * [id] - ID of the custom props. You can get the corresponding metadata key by appending `props:` prefix.
/// * [name] - Display name of the propertity.
/// * [type] - Type of the input component.
/// * [max] - Maximum length for text fields, maximum value for number/rating field.
/// * [min] - Minimum length for text fields, minimum value for number field.
/// * [default_] - Default value in string.
/// * [options] - Options for selection component.
/// * [icon] - Optional icon name from Iconify.
@BuiltValue()
abstract class CustomProps implements Built<CustomProps, CustomPropsBuilder> {
  /// ID of the custom props. You can get the corresponding metadata key by appending `props:` prefix.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Display name of the propertity.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Type of the input component.
  @BuiltValueField(wireName: r'type')
  CustomPropsTypeEnum? get type;
  // enum typeEnum {  text,  number,  boolean,  select,  multi_select,  link,  rating,  };

  /// Maximum length for text fields, maximum value for number/rating field.
  @BuiltValueField(wireName: r'max')
  String? get max;

  /// Minimum length for text fields, minimum value for number field.
  @BuiltValueField(wireName: r'min')
  String? get min;

  /// Default value in string.
  @BuiltValueField(wireName: r'default')
  String? get default_;

  /// Options for selection component.
  @BuiltValueField(wireName: r'options')
  BuiltList<String>? get options;

  /// Optional icon name from Iconify.
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  CustomProps._();

  factory CustomProps([void updates(CustomPropsBuilder b)]) = _$CustomProps;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomPropsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomProps> get serializer => _$CustomPropsSerializer();
}

class _$CustomPropsSerializer implements PrimitiveSerializer<CustomProps> {
  @override
  final Iterable<Type> types = const [CustomProps, _$CustomProps];

  @override
  final String wireName = r'CustomProps';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomProps object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(CustomPropsTypeEnum),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.min != null) {
      yield r'min';
      yield serializers.serialize(
        object.min,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomProps object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomPropsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CustomPropsTypeEnum),
          ) as CustomPropsTypeEnum;
          result.type = valueDes;
          break;
        case r'max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.max = valueDes;
          break;
        case r'min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.min = valueDes;
          break;
        case r'default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.default_ = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.options.replace(valueDes);
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomProps deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomPropsBuilder();
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

class CustomPropsTypeEnum extends EnumClass {

  /// Type of the input component.
  @BuiltValueEnumConst(wireName: r'text')
  static const CustomPropsTypeEnum text = _$customPropsTypeEnum_text;
  /// Type of the input component.
  @BuiltValueEnumConst(wireName: r'number')
  static const CustomPropsTypeEnum number = _$customPropsTypeEnum_number;
  /// Type of the input component.
  @BuiltValueEnumConst(wireName: r'boolean')
  static const CustomPropsTypeEnum boolean = _$customPropsTypeEnum_boolean;
  /// Type of the input component.
  @BuiltValueEnumConst(wireName: r'select')
  static const CustomPropsTypeEnum select = _$customPropsTypeEnum_select;
  /// Type of the input component.
  @BuiltValueEnumConst(wireName: r'multi_select')
  static const CustomPropsTypeEnum multiSelect = _$customPropsTypeEnum_multiSelect;
  /// Type of the input component.
  @BuiltValueEnumConst(wireName: r'link')
  static const CustomPropsTypeEnum link = _$customPropsTypeEnum_link;
  /// Type of the input component.
  @BuiltValueEnumConst(wireName: r'rating')
  static const CustomPropsTypeEnum rating = _$customPropsTypeEnum_rating;

  static Serializer<CustomPropsTypeEnum> get serializer => _$customPropsTypeEnumSerializer;

  const CustomPropsTypeEnum._(String name): super(name);

  static BuiltSet<CustomPropsTypeEnum> get values => _$customPropsTypeEnumValues;
  static CustomPropsTypeEnum valueOf(String name) => _$customPropsTypeEnumValueOf(name);
}

