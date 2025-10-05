// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NodeTypeEnum _$nodeTypeEnum_master = const NodeTypeEnum._('master');
const NodeTypeEnum _$nodeTypeEnum_slave = const NodeTypeEnum._('slave');

NodeTypeEnum _$nodeTypeEnumValueOf(String name) {
  switch (name) {
    case 'master':
      return _$nodeTypeEnum_master;
    case 'slave':
      return _$nodeTypeEnum_slave;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NodeTypeEnum> _$nodeTypeEnumValues =
    BuiltSet<NodeTypeEnum>(const <NodeTypeEnum>[
  _$nodeTypeEnum_master,
  _$nodeTypeEnum_slave,
]);

Serializer<NodeTypeEnum> _$nodeTypeEnumSerializer = _$NodeTypeEnumSerializer();

class _$NodeTypeEnumSerializer implements PrimitiveSerializer<NodeTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'master': 'master',
    'slave': 'slave',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'master': 'master',
    'slave': 'slave',
  };

  @override
  final Iterable<Type> types = const <Type>[NodeTypeEnum];
  @override
  final String wireName = 'NodeTypeEnum';

  @override
  Object serialize(Serializers serializers, NodeTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NodeTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NodeTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Node extends Node {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final NodeTypeEnum? type;
  @override
  final String? capabilities;

  factory _$Node([void Function(NodeBuilder)? updates]) =>
      (NodeBuilder()..update(updates))._build();

  _$Node._({this.id, this.name, this.type, this.capabilities}) : super._();
  @override
  Node rebuild(void Function(NodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NodeBuilder toBuilder() => NodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Node &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        capabilities == other.capabilities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Node')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('capabilities', capabilities))
        .toString();
  }
}

class NodeBuilder implements Builder<Node, NodeBuilder> {
  _$Node? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  NodeTypeEnum? _type;
  NodeTypeEnum? get type => _$this._type;
  set type(NodeTypeEnum? type) => _$this._type = type;

  String? _capabilities;
  String? get capabilities => _$this._capabilities;
  set capabilities(String? capabilities) => _$this._capabilities = capabilities;

  NodeBuilder() {
    Node._defaults(this);
  }

  NodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _capabilities = $v.capabilities;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Node other) {
    _$v = other as _$Node;
  }

  @override
  void update(void Function(NodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Node build() => _build();

  _$Node _build() {
    final _$result = _$v ??
        _$Node._(
          id: id,
          name: name,
          type: type,
          capabilities: capabilities,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
