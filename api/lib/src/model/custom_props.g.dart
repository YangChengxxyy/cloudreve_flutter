// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_props.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CustomPropsTypeEnum _$customPropsTypeEnum_text =
    const CustomPropsTypeEnum._('text');
const CustomPropsTypeEnum _$customPropsTypeEnum_number =
    const CustomPropsTypeEnum._('number');
const CustomPropsTypeEnum _$customPropsTypeEnum_boolean =
    const CustomPropsTypeEnum._('boolean');
const CustomPropsTypeEnum _$customPropsTypeEnum_select =
    const CustomPropsTypeEnum._('select');
const CustomPropsTypeEnum _$customPropsTypeEnum_multiSelect =
    const CustomPropsTypeEnum._('multiSelect');
const CustomPropsTypeEnum _$customPropsTypeEnum_link =
    const CustomPropsTypeEnum._('link');
const CustomPropsTypeEnum _$customPropsTypeEnum_rating =
    const CustomPropsTypeEnum._('rating');

CustomPropsTypeEnum _$customPropsTypeEnumValueOf(String name) {
  switch (name) {
    case 'text':
      return _$customPropsTypeEnum_text;
    case 'number':
      return _$customPropsTypeEnum_number;
    case 'boolean':
      return _$customPropsTypeEnum_boolean;
    case 'select':
      return _$customPropsTypeEnum_select;
    case 'multiSelect':
      return _$customPropsTypeEnum_multiSelect;
    case 'link':
      return _$customPropsTypeEnum_link;
    case 'rating':
      return _$customPropsTypeEnum_rating;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CustomPropsTypeEnum> _$customPropsTypeEnumValues =
    BuiltSet<CustomPropsTypeEnum>(const <CustomPropsTypeEnum>[
  _$customPropsTypeEnum_text,
  _$customPropsTypeEnum_number,
  _$customPropsTypeEnum_boolean,
  _$customPropsTypeEnum_select,
  _$customPropsTypeEnum_multiSelect,
  _$customPropsTypeEnum_link,
  _$customPropsTypeEnum_rating,
]);

Serializer<CustomPropsTypeEnum> _$customPropsTypeEnumSerializer =
    _$CustomPropsTypeEnumSerializer();

class _$CustomPropsTypeEnumSerializer
    implements PrimitiveSerializer<CustomPropsTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'text': 'text',
    'number': 'number',
    'boolean': 'boolean',
    'select': 'select',
    'multiSelect': 'multi_select',
    'link': 'link',
    'rating': 'rating',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'text': 'text',
    'number': 'number',
    'boolean': 'boolean',
    'select': 'select',
    'multi_select': 'multiSelect',
    'link': 'link',
    'rating': 'rating',
  };

  @override
  final Iterable<Type> types = const <Type>[CustomPropsTypeEnum];
  @override
  final String wireName = 'CustomPropsTypeEnum';

  @override
  Object serialize(Serializers serializers, CustomPropsTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CustomPropsTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CustomPropsTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CustomProps extends CustomProps {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final CustomPropsTypeEnum? type;
  @override
  final String? max;
  @override
  final String? min;
  @override
  final String? default_;
  @override
  final BuiltList<String>? options;
  @override
  final String? icon;

  factory _$CustomProps([void Function(CustomPropsBuilder)? updates]) =>
      (CustomPropsBuilder()..update(updates))._build();

  _$CustomProps._(
      {this.id,
      this.name,
      this.type,
      this.max,
      this.min,
      this.default_,
      this.options,
      this.icon})
      : super._();
  @override
  CustomProps rebuild(void Function(CustomPropsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomPropsBuilder toBuilder() => CustomPropsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomProps &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        max == other.max &&
        min == other.min &&
        default_ == other.default_ &&
        options == other.options &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomProps')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('max', max)
          ..add('min', min)
          ..add('default_', default_)
          ..add('options', options)
          ..add('icon', icon))
        .toString();
  }
}

class CustomPropsBuilder implements Builder<CustomProps, CustomPropsBuilder> {
  _$CustomProps? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CustomPropsTypeEnum? _type;
  CustomPropsTypeEnum? get type => _$this._type;
  set type(CustomPropsTypeEnum? type) => _$this._type = type;

  String? _max;
  String? get max => _$this._max;
  set max(String? max) => _$this._max = max;

  String? _min;
  String? get min => _$this._min;
  set min(String? min) => _$this._min = min;

  String? _default_;
  String? get default_ => _$this._default_;
  set default_(String? default_) => _$this._default_ = default_;

  ListBuilder<String>? _options;
  ListBuilder<String> get options => _$this._options ??= ListBuilder<String>();
  set options(ListBuilder<String>? options) => _$this._options = options;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  CustomPropsBuilder() {
    CustomProps._defaults(this);
  }

  CustomPropsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _max = $v.max;
      _min = $v.min;
      _default_ = $v.default_;
      _options = $v.options?.toBuilder();
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomProps other) {
    _$v = other as _$CustomProps;
  }

  @override
  void update(void Function(CustomPropsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomProps build() => _build();

  _$CustomProps _build() {
    _$CustomProps _$result;
    try {
      _$result = _$v ??
          _$CustomProps._(
            id: id,
            name: name,
            type: type,
            max: max,
            min: min,
            default_: default_,
            options: _options?.build(),
            icon: icon,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomProps', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
