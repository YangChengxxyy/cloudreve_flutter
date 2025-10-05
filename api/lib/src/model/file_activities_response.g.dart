// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_activities_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileActivitiesResponse extends FileActivitiesResponse {
  @override
  final BuiltList<Activity>? activities;
  @override
  final FileActivitiesResponsePagination? pagination;

  factory _$FileActivitiesResponse(
          [void Function(FileActivitiesResponseBuilder)? updates]) =>
      (FileActivitiesResponseBuilder()..update(updates))._build();

  _$FileActivitiesResponse._({this.activities, this.pagination}) : super._();
  @override
  FileActivitiesResponse rebuild(
          void Function(FileActivitiesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileActivitiesResponseBuilder toBuilder() =>
      FileActivitiesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileActivitiesResponse &&
        activities == other.activities &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activities.hashCode);
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileActivitiesResponse')
          ..add('activities', activities)
          ..add('pagination', pagination))
        .toString();
  }
}

class FileActivitiesResponseBuilder
    implements Builder<FileActivitiesResponse, FileActivitiesResponseBuilder> {
  _$FileActivitiesResponse? _$v;

  ListBuilder<Activity>? _activities;
  ListBuilder<Activity> get activities =>
      _$this._activities ??= ListBuilder<Activity>();
  set activities(ListBuilder<Activity>? activities) =>
      _$this._activities = activities;

  FileActivitiesResponsePaginationBuilder? _pagination;
  FileActivitiesResponsePaginationBuilder get pagination =>
      _$this._pagination ??= FileActivitiesResponsePaginationBuilder();
  set pagination(FileActivitiesResponsePaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  FileActivitiesResponseBuilder() {
    FileActivitiesResponse._defaults(this);
  }

  FileActivitiesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activities = $v.activities?.toBuilder();
      _pagination = $v.pagination?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileActivitiesResponse other) {
    _$v = other as _$FileActivitiesResponse;
  }

  @override
  void update(void Function(FileActivitiesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileActivitiesResponse build() => _build();

  _$FileActivitiesResponse _build() {
    _$FileActivitiesResponse _$result;
    try {
      _$result = _$v ??
          _$FileActivitiesResponse._(
            activities: _activities?.build(),
            pagination: _pagination?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activities';
        _activities?.build();
        _$failedField = 'pagination';
        _pagination?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileActivitiesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
