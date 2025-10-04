// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListResponse extends ListResponse {
  @override
  final BuiltList<FileResponse> files;
  @override
  final FileResponse parent;
  @override
  final PaginationResults pagination;
  @override
  final NavigatorProps props;
  @override
  final String contextHint;
  @override
  final bool? recursionLimitReached;
  @override
  final bool mixedType;
  @override
  final bool? singleFileView;
  @override
  final StoragePolicy? storagePolicy;
  @override
  final ExplorerView? view;

  factory _$ListResponse([void Function(ListResponseBuilder)? updates]) =>
      (ListResponseBuilder()..update(updates))._build();

  _$ListResponse._(
      {required this.files,
      required this.parent,
      required this.pagination,
      required this.props,
      required this.contextHint,
      this.recursionLimitReached,
      required this.mixedType,
      this.singleFileView,
      this.storagePolicy,
      this.view})
      : super._();
  @override
  ListResponse rebuild(void Function(ListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListResponseBuilder toBuilder() => ListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListResponse &&
        files == other.files &&
        parent == other.parent &&
        pagination == other.pagination &&
        props == other.props &&
        contextHint == other.contextHint &&
        recursionLimitReached == other.recursionLimitReached &&
        mixedType == other.mixedType &&
        singleFileView == other.singleFileView &&
        storagePolicy == other.storagePolicy &&
        view == other.view;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jc(_$hash, parent.hashCode);
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jc(_$hash, props.hashCode);
    _$hash = $jc(_$hash, contextHint.hashCode);
    _$hash = $jc(_$hash, recursionLimitReached.hashCode);
    _$hash = $jc(_$hash, mixedType.hashCode);
    _$hash = $jc(_$hash, singleFileView.hashCode);
    _$hash = $jc(_$hash, storagePolicy.hashCode);
    _$hash = $jc(_$hash, view.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListResponse')
          ..add('files', files)
          ..add('parent', parent)
          ..add('pagination', pagination)
          ..add('props', props)
          ..add('contextHint', contextHint)
          ..add('recursionLimitReached', recursionLimitReached)
          ..add('mixedType', mixedType)
          ..add('singleFileView', singleFileView)
          ..add('storagePolicy', storagePolicy)
          ..add('view', view))
        .toString();
  }
}

class ListResponseBuilder
    implements Builder<ListResponse, ListResponseBuilder> {
  _$ListResponse? _$v;

  ListBuilder<FileResponse>? _files;
  ListBuilder<FileResponse> get files =>
      _$this._files ??= ListBuilder<FileResponse>();
  set files(ListBuilder<FileResponse>? files) => _$this._files = files;

  FileResponseBuilder? _parent;
  FileResponseBuilder get parent => _$this._parent ??= FileResponseBuilder();
  set parent(FileResponseBuilder? parent) => _$this._parent = parent;

  PaginationResultsBuilder? _pagination;
  PaginationResultsBuilder get pagination =>
      _$this._pagination ??= PaginationResultsBuilder();
  set pagination(PaginationResultsBuilder? pagination) =>
      _$this._pagination = pagination;

  NavigatorPropsBuilder? _props;
  NavigatorPropsBuilder get props => _$this._props ??= NavigatorPropsBuilder();
  set props(NavigatorPropsBuilder? props) => _$this._props = props;

  String? _contextHint;
  String? get contextHint => _$this._contextHint;
  set contextHint(String? contextHint) => _$this._contextHint = contextHint;

  bool? _recursionLimitReached;
  bool? get recursionLimitReached => _$this._recursionLimitReached;
  set recursionLimitReached(bool? recursionLimitReached) =>
      _$this._recursionLimitReached = recursionLimitReached;

  bool? _mixedType;
  bool? get mixedType => _$this._mixedType;
  set mixedType(bool? mixedType) => _$this._mixedType = mixedType;

  bool? _singleFileView;
  bool? get singleFileView => _$this._singleFileView;
  set singleFileView(bool? singleFileView) =>
      _$this._singleFileView = singleFileView;

  StoragePolicyBuilder? _storagePolicy;
  StoragePolicyBuilder get storagePolicy =>
      _$this._storagePolicy ??= StoragePolicyBuilder();
  set storagePolicy(StoragePolicyBuilder? storagePolicy) =>
      _$this._storagePolicy = storagePolicy;

  ExplorerViewBuilder? _view;
  ExplorerViewBuilder get view => _$this._view ??= ExplorerViewBuilder();
  set view(ExplorerViewBuilder? view) => _$this._view = view;

  ListResponseBuilder() {
    ListResponse._defaults(this);
  }

  ListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _files = $v.files.toBuilder();
      _parent = $v.parent.toBuilder();
      _pagination = $v.pagination.toBuilder();
      _props = $v.props.toBuilder();
      _contextHint = $v.contextHint;
      _recursionLimitReached = $v.recursionLimitReached;
      _mixedType = $v.mixedType;
      _singleFileView = $v.singleFileView;
      _storagePolicy = $v.storagePolicy?.toBuilder();
      _view = $v.view?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListResponse other) {
    _$v = other as _$ListResponse;
  }

  @override
  void update(void Function(ListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListResponse build() => _build();

  _$ListResponse _build() {
    _$ListResponse _$result;
    try {
      _$result = _$v ??
          _$ListResponse._(
            files: files.build(),
            parent: parent.build(),
            pagination: pagination.build(),
            props: props.build(),
            contextHint: BuiltValueNullFieldError.checkNotNull(
                contextHint, r'ListResponse', 'contextHint'),
            recursionLimitReached: recursionLimitReached,
            mixedType: BuiltValueNullFieldError.checkNotNull(
                mixedType, r'ListResponse', 'mixedType'),
            singleFileView: singleFileView,
            storagePolicy: _storagePolicy?.build(),
            view: _view?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'files';
        files.build();
        _$failedField = 'parent';
        parent.build();
        _$failedField = 'pagination';
        pagination.build();
        _$failedField = 'props';
        props.build();

        _$failedField = 'storagePolicy';
        _storagePolicy?.build();
        _$failedField = 'view';
        _view?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
