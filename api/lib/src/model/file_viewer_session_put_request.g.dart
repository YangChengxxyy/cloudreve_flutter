// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_viewer_session_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FileViewerSessionPutRequestPreferredActionEnum
    _$fileViewerSessionPutRequestPreferredActionEnum_edit =
    const FileViewerSessionPutRequestPreferredActionEnum._('edit');
const FileViewerSessionPutRequestPreferredActionEnum
    _$fileViewerSessionPutRequestPreferredActionEnum_view =
    const FileViewerSessionPutRequestPreferredActionEnum._('view');

FileViewerSessionPutRequestPreferredActionEnum
    _$fileViewerSessionPutRequestPreferredActionEnumValueOf(String name) {
  switch (name) {
    case 'edit':
      return _$fileViewerSessionPutRequestPreferredActionEnum_edit;
    case 'view':
      return _$fileViewerSessionPutRequestPreferredActionEnum_view;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FileViewerSessionPutRequestPreferredActionEnum>
    _$fileViewerSessionPutRequestPreferredActionEnumValues = BuiltSet<
        FileViewerSessionPutRequestPreferredActionEnum>(const <FileViewerSessionPutRequestPreferredActionEnum>[
  _$fileViewerSessionPutRequestPreferredActionEnum_edit,
  _$fileViewerSessionPutRequestPreferredActionEnum_view,
]);

Serializer<FileViewerSessionPutRequestPreferredActionEnum>
    _$fileViewerSessionPutRequestPreferredActionEnumSerializer =
    _$FileViewerSessionPutRequestPreferredActionEnumSerializer();

class _$FileViewerSessionPutRequestPreferredActionEnumSerializer
    implements
        PrimitiveSerializer<FileViewerSessionPutRequestPreferredActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'edit': 'edit',
    'view': 'view',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'edit': 'edit',
    'view': 'view',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FileViewerSessionPutRequestPreferredActionEnum
  ];
  @override
  final String wireName = 'FileViewerSessionPutRequestPreferredActionEnum';

  @override
  Object serialize(Serializers serializers,
          FileViewerSessionPutRequestPreferredActionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FileViewerSessionPutRequestPreferredActionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FileViewerSessionPutRequestPreferredActionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FileViewerSessionPutRequest extends FileViewerSessionPutRequest {
  @override
  final String uri;
  @override
  final String? version;
  @override
  final String viewerId;
  @override
  final FileViewerSessionPutRequestPreferredActionEnum preferredAction;
  @override
  final String? parentUri;

  factory _$FileViewerSessionPutRequest(
          [void Function(FileViewerSessionPutRequestBuilder)? updates]) =>
      (FileViewerSessionPutRequestBuilder()..update(updates))._build();

  _$FileViewerSessionPutRequest._(
      {required this.uri,
      this.version,
      required this.viewerId,
      required this.preferredAction,
      this.parentUri})
      : super._();
  @override
  FileViewerSessionPutRequest rebuild(
          void Function(FileViewerSessionPutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileViewerSessionPutRequestBuilder toBuilder() =>
      FileViewerSessionPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileViewerSessionPutRequest &&
        uri == other.uri &&
        version == other.version &&
        viewerId == other.viewerId &&
        preferredAction == other.preferredAction &&
        parentUri == other.parentUri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, viewerId.hashCode);
    _$hash = $jc(_$hash, preferredAction.hashCode);
    _$hash = $jc(_$hash, parentUri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileViewerSessionPutRequest')
          ..add('uri', uri)
          ..add('version', version)
          ..add('viewerId', viewerId)
          ..add('preferredAction', preferredAction)
          ..add('parentUri', parentUri))
        .toString();
  }
}

class FileViewerSessionPutRequestBuilder
    implements
        Builder<FileViewerSessionPutRequest,
            FileViewerSessionPutRequestBuilder> {
  _$FileViewerSessionPutRequest? _$v;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _viewerId;
  String? get viewerId => _$this._viewerId;
  set viewerId(String? viewerId) => _$this._viewerId = viewerId;

  FileViewerSessionPutRequestPreferredActionEnum? _preferredAction;
  FileViewerSessionPutRequestPreferredActionEnum? get preferredAction =>
      _$this._preferredAction;
  set preferredAction(
          FileViewerSessionPutRequestPreferredActionEnum? preferredAction) =>
      _$this._preferredAction = preferredAction;

  String? _parentUri;
  String? get parentUri => _$this._parentUri;
  set parentUri(String? parentUri) => _$this._parentUri = parentUri;

  FileViewerSessionPutRequestBuilder() {
    FileViewerSessionPutRequest._defaults(this);
  }

  FileViewerSessionPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uri = $v.uri;
      _version = $v.version;
      _viewerId = $v.viewerId;
      _preferredAction = $v.preferredAction;
      _parentUri = $v.parentUri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileViewerSessionPutRequest other) {
    _$v = other as _$FileViewerSessionPutRequest;
  }

  @override
  void update(void Function(FileViewerSessionPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileViewerSessionPutRequest build() => _build();

  _$FileViewerSessionPutRequest _build() {
    final _$result = _$v ??
        _$FileViewerSessionPutRequest._(
          uri: BuiltValueNullFieldError.checkNotNull(
              uri, r'FileViewerSessionPutRequest', 'uri'),
          version: version,
          viewerId: BuiltValueNullFieldError.checkNotNull(
              viewerId, r'FileViewerSessionPutRequest', 'viewerId'),
          preferredAction: BuiltValueNullFieldError.checkNotNull(
              preferredAction,
              r'FileViewerSessionPutRequest',
              'preferredAction'),
          parentUri: parentUri,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
