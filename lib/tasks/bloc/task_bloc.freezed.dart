// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String taskTitle, double taskStatus, DateTime taskExpiryDate)
        saveTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String taskTitle, double taskStatus, DateTime taskExpiryDate)?
        saveTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String taskTitle, double taskStatus, DateTime taskExpiryDate)?
        saveTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SaveTaskEvent value) saveTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SaveTaskEvent value)? saveTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SaveTaskEvent value)? saveTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TaskEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String taskTitle, double taskStatus, DateTime taskExpiryDate)
        saveTask,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String taskTitle, double taskStatus, DateTime taskExpiryDate)?
        saveTask,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String taskTitle, double taskStatus, DateTime taskExpiryDate)?
        saveTask,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SaveTaskEvent value) saveTask,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SaveTaskEvent value)? saveTask,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SaveTaskEvent value)? saveTask,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TaskEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SaveTaskEventImplCopyWith<$Res> {
  factory _$$SaveTaskEventImplCopyWith(
          _$SaveTaskEventImpl value, $Res Function(_$SaveTaskEventImpl) then) =
      __$$SaveTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskTitle, double taskStatus, DateTime taskExpiryDate});
}

/// @nodoc
class __$$SaveTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$SaveTaskEventImpl>
    implements _$$SaveTaskEventImplCopyWith<$Res> {
  __$$SaveTaskEventImplCopyWithImpl(
      _$SaveTaskEventImpl _value, $Res Function(_$SaveTaskEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskTitle = null,
    Object? taskStatus = null,
    Object? taskExpiryDate = null,
  }) {
    return _then(_$SaveTaskEventImpl(
      null == taskTitle
          ? _value.taskTitle
          : taskTitle // ignore: cast_nullable_to_non_nullable
              as String,
      null == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as double,
      null == taskExpiryDate
          ? _value.taskExpiryDate
          : taskExpiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SaveTaskEventImpl implements SaveTaskEvent {
  const _$SaveTaskEventImpl(
      this.taskTitle, this.taskStatus, this.taskExpiryDate);

  @override
  final String taskTitle;
  @override
  final double taskStatus;
  @override
  final DateTime taskExpiryDate;

  @override
  String toString() {
    return 'TaskEvent.saveTask(taskTitle: $taskTitle, taskStatus: $taskStatus, taskExpiryDate: $taskExpiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTaskEventImpl &&
            (identical(other.taskTitle, taskTitle) ||
                other.taskTitle == taskTitle) &&
            (identical(other.taskStatus, taskStatus) ||
                other.taskStatus == taskStatus) &&
            (identical(other.taskExpiryDate, taskExpiryDate) ||
                other.taskExpiryDate == taskExpiryDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, taskTitle, taskStatus, taskExpiryDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTaskEventImplCopyWith<_$SaveTaskEventImpl> get copyWith =>
      __$$SaveTaskEventImplCopyWithImpl<_$SaveTaskEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String taskTitle, double taskStatus, DateTime taskExpiryDate)
        saveTask,
  }) {
    return saveTask(taskTitle, taskStatus, taskExpiryDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String taskTitle, double taskStatus, DateTime taskExpiryDate)?
        saveTask,
  }) {
    return saveTask?.call(taskTitle, taskStatus, taskExpiryDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String taskTitle, double taskStatus, DateTime taskExpiryDate)?
        saveTask,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(taskTitle, taskStatus, taskExpiryDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SaveTaskEvent value) saveTask,
  }) {
    return saveTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SaveTaskEvent value)? saveTask,
  }) {
    return saveTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SaveTaskEvent value)? saveTask,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(this);
    }
    return orElse();
  }
}

abstract class SaveTaskEvent implements TaskEvent {
  const factory SaveTaskEvent(final String taskTitle, final double taskStatus,
      final DateTime taskExpiryDate) = _$SaveTaskEventImpl;

  String get taskTitle;
  double get taskStatus;
  DateTime get taskExpiryDate;
  @JsonKey(ignore: true)
  _$$SaveTaskEventImplCopyWith<_$SaveTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int timestamp) taskSaving,
    required TResult Function(
            int timestamp, List<TaskDetailsValidationError> error)
        taskCreationInvalid,
    required TResult Function(int timestamp, List<TasksLocal> tasks)
        taskSaveSuccess,
    required TResult Function(int timestamp, String error) taskaveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int timestamp)? taskSaving,
    TResult? Function(int timestamp, List<TaskDetailsValidationError> error)?
        taskCreationInvalid,
    TResult? Function(int timestamp, List<TasksLocal> tasks)? taskSaveSuccess,
    TResult? Function(int timestamp, String error)? taskaveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int timestamp)? taskSaving,
    TResult Function(int timestamp, List<TaskDetailsValidationError> error)?
        taskCreationInvalid,
    TResult Function(int timestamp, List<TasksLocal> tasks)? taskSaveSuccess,
    TResult Function(int timestamp, String error)? taskaveFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TaskSavingState value) taskSaving,
    required TResult Function(TaskDetailsInvalid value) taskCreationInvalid,
    required TResult Function(TaskSaveSuccessState value) taskSaveSuccess,
    required TResult Function(TaskDetailsSaveFailureState value) taskaveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TaskSavingState value)? taskSaving,
    TResult? Function(TaskDetailsInvalid value)? taskCreationInvalid,
    TResult? Function(TaskSaveSuccessState value)? taskSaveSuccess,
    TResult? Function(TaskDetailsSaveFailureState value)? taskaveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TaskSavingState value)? taskSaving,
    TResult Function(TaskDetailsInvalid value)? taskCreationInvalid,
    TResult Function(TaskSaveSuccessState value)? taskSaveSuccess,
    TResult Function(TaskDetailsSaveFailureState value)? taskaveFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TaskState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int timestamp) taskSaving,
    required TResult Function(
            int timestamp, List<TaskDetailsValidationError> error)
        taskCreationInvalid,
    required TResult Function(int timestamp, List<TasksLocal> tasks)
        taskSaveSuccess,
    required TResult Function(int timestamp, String error) taskaveFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int timestamp)? taskSaving,
    TResult? Function(int timestamp, List<TaskDetailsValidationError> error)?
        taskCreationInvalid,
    TResult? Function(int timestamp, List<TasksLocal> tasks)? taskSaveSuccess,
    TResult? Function(int timestamp, String error)? taskaveFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int timestamp)? taskSaving,
    TResult Function(int timestamp, List<TaskDetailsValidationError> error)?
        taskCreationInvalid,
    TResult Function(int timestamp, List<TasksLocal> tasks)? taskSaveSuccess,
    TResult Function(int timestamp, String error)? taskaveFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TaskSavingState value) taskSaving,
    required TResult Function(TaskDetailsInvalid value) taskCreationInvalid,
    required TResult Function(TaskSaveSuccessState value) taskSaveSuccess,
    required TResult Function(TaskDetailsSaveFailureState value) taskaveFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TaskSavingState value)? taskSaving,
    TResult? Function(TaskDetailsInvalid value)? taskCreationInvalid,
    TResult? Function(TaskSaveSuccessState value)? taskSaveSuccess,
    TResult? Function(TaskDetailsSaveFailureState value)? taskaveFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TaskSavingState value)? taskSaving,
    TResult Function(TaskDetailsInvalid value)? taskCreationInvalid,
    TResult Function(TaskSaveSuccessState value)? taskSaveSuccess,
    TResult Function(TaskDetailsSaveFailureState value)? taskaveFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TaskSavingStateImplCopyWith<$Res> {
  factory _$$TaskSavingStateImplCopyWith(_$TaskSavingStateImpl value,
          $Res Function(_$TaskSavingStateImpl) then) =
      __$$TaskSavingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int timestamp});
}

/// @nodoc
class __$$TaskSavingStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskSavingStateImpl>
    implements _$$TaskSavingStateImplCopyWith<$Res> {
  __$$TaskSavingStateImplCopyWithImpl(
      _$TaskSavingStateImpl _value, $Res Function(_$TaskSavingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
  }) {
    return _then(_$TaskSavingStateImpl(
      null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TaskSavingStateImpl implements TaskSavingState {
  const _$TaskSavingStateImpl(this.timestamp);

  @override
  final int timestamp;

  @override
  String toString() {
    return 'TaskState.taskSaving(timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskSavingStateImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskSavingStateImplCopyWith<_$TaskSavingStateImpl> get copyWith =>
      __$$TaskSavingStateImplCopyWithImpl<_$TaskSavingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int timestamp) taskSaving,
    required TResult Function(
            int timestamp, List<TaskDetailsValidationError> error)
        taskCreationInvalid,
    required TResult Function(int timestamp, List<TasksLocal> tasks)
        taskSaveSuccess,
    required TResult Function(int timestamp, String error) taskaveFailure,
  }) {
    return taskSaving(timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int timestamp)? taskSaving,
    TResult? Function(int timestamp, List<TaskDetailsValidationError> error)?
        taskCreationInvalid,
    TResult? Function(int timestamp, List<TasksLocal> tasks)? taskSaveSuccess,
    TResult? Function(int timestamp, String error)? taskaveFailure,
  }) {
    return taskSaving?.call(timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int timestamp)? taskSaving,
    TResult Function(int timestamp, List<TaskDetailsValidationError> error)?
        taskCreationInvalid,
    TResult Function(int timestamp, List<TasksLocal> tasks)? taskSaveSuccess,
    TResult Function(int timestamp, String error)? taskaveFailure,
    required TResult orElse(),
  }) {
    if (taskSaving != null) {
      return taskSaving(timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TaskSavingState value) taskSaving,
    required TResult Function(TaskDetailsInvalid value) taskCreationInvalid,
    required TResult Function(TaskSaveSuccessState value) taskSaveSuccess,
    required TResult Function(TaskDetailsSaveFailureState value) taskaveFailure,
  }) {
    return taskSaving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TaskSavingState value)? taskSaving,
    TResult? Function(TaskDetailsInvalid value)? taskCreationInvalid,
    TResult? Function(TaskSaveSuccessState value)? taskSaveSuccess,
    TResult? Function(TaskDetailsSaveFailureState value)? taskaveFailure,
  }) {
    return taskSaving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TaskSavingState value)? taskSaving,
    TResult Function(TaskDetailsInvalid value)? taskCreationInvalid,
    TResult Function(TaskSaveSuccessState value)? taskSaveSuccess,
    TResult Function(TaskDetailsSaveFailureState value)? taskaveFailure,
    required TResult orElse(),
  }) {
    if (taskSaving != null) {
      return taskSaving(this);
    }
    return orElse();
  }
}

abstract class TaskSavingState implements TaskState {
  const factory TaskSavingState(final int timestamp) = _$TaskSavingStateImpl;

  int get timestamp;
  @JsonKey(ignore: true)
  _$$TaskSavingStateImplCopyWith<_$TaskSavingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDetailsInvalidImplCopyWith<$Res> {
  factory _$$TaskDetailsInvalidImplCopyWith(_$TaskDetailsInvalidImpl value,
          $Res Function(_$TaskDetailsInvalidImpl) then) =
      __$$TaskDetailsInvalidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int timestamp, List<TaskDetailsValidationError> error});
}

/// @nodoc
class __$$TaskDetailsInvalidImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskDetailsInvalidImpl>
    implements _$$TaskDetailsInvalidImplCopyWith<$Res> {
  __$$TaskDetailsInvalidImplCopyWithImpl(_$TaskDetailsInvalidImpl _value,
      $Res Function(_$TaskDetailsInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? error = null,
  }) {
    return _then(_$TaskDetailsInvalidImpl(
      null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      null == error
          ? _value._error
          : error // ignore: cast_nullable_to_non_nullable
              as List<TaskDetailsValidationError>,
    ));
  }
}

/// @nodoc

class _$TaskDetailsInvalidImpl implements TaskDetailsInvalid {
  const _$TaskDetailsInvalidImpl(
      this.timestamp, final List<TaskDetailsValidationError> error)
      : _error = error;

  @override
  final int timestamp;
  final List<TaskDetailsValidationError> _error;
  @override
  List<TaskDetailsValidationError> get error {
    if (_error is EqualUnmodifiableListView) return _error;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_error);
  }

  @override
  String toString() {
    return 'TaskState.taskCreationInvalid(timestamp: $timestamp, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailsInvalidImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._error, _error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, timestamp, const DeepCollectionEquality().hash(_error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailsInvalidImplCopyWith<_$TaskDetailsInvalidImpl> get copyWith =>
      __$$TaskDetailsInvalidImplCopyWithImpl<_$TaskDetailsInvalidImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int timestamp) taskSaving,
    required TResult Function(
            int timestamp, List<TaskDetailsValidationError> error)
        taskCreationInvalid,
    required TResult Function(int timestamp, List<TasksLocal> tasks)
        taskSaveSuccess,
    required TResult Function(int timestamp, String error) taskaveFailure,
  }) {
    return taskCreationInvalid(timestamp, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int timestamp)? taskSaving,
    TResult? Function(int timestamp, List<TaskDetailsValidationError> error)?
        taskCreationInvalid,
    TResult? Function(int timestamp, List<TasksLocal> tasks)? taskSaveSuccess,
    TResult? Function(int timestamp, String error)? taskaveFailure,
  }) {
    return taskCreationInvalid?.call(timestamp, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int timestamp)? taskSaving,
    TResult Function(int timestamp, List<TaskDetailsValidationError> error)?
        taskCreationInvalid,
    TResult Function(int timestamp, List<TasksLocal> tasks)? taskSaveSuccess,
    TResult Function(int timestamp, String error)? taskaveFailure,
    required TResult orElse(),
  }) {
    if (taskCreationInvalid != null) {
      return taskCreationInvalid(timestamp, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TaskSavingState value) taskSaving,
    required TResult Function(TaskDetailsInvalid value) taskCreationInvalid,
    required TResult Function(TaskSaveSuccessState value) taskSaveSuccess,
    required TResult Function(TaskDetailsSaveFailureState value) taskaveFailure,
  }) {
    return taskCreationInvalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TaskSavingState value)? taskSaving,
    TResult? Function(TaskDetailsInvalid value)? taskCreationInvalid,
    TResult? Function(TaskSaveSuccessState value)? taskSaveSuccess,
    TResult? Function(TaskDetailsSaveFailureState value)? taskaveFailure,
  }) {
    return taskCreationInvalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TaskSavingState value)? taskSaving,
    TResult Function(TaskDetailsInvalid value)? taskCreationInvalid,
    TResult Function(TaskSaveSuccessState value)? taskSaveSuccess,
    TResult Function(TaskDetailsSaveFailureState value)? taskaveFailure,
    required TResult orElse(),
  }) {
    if (taskCreationInvalid != null) {
      return taskCreationInvalid(this);
    }
    return orElse();
  }
}

abstract class TaskDetailsInvalid implements TaskState {
  const factory TaskDetailsInvalid(
          final int timestamp, final List<TaskDetailsValidationError> error) =
      _$TaskDetailsInvalidImpl;

  int get timestamp;
  List<TaskDetailsValidationError> get error;
  @JsonKey(ignore: true)
  _$$TaskDetailsInvalidImplCopyWith<_$TaskDetailsInvalidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskSaveSuccessStateImplCopyWith<$Res> {
  factory _$$TaskSaveSuccessStateImplCopyWith(_$TaskSaveSuccessStateImpl value,
          $Res Function(_$TaskSaveSuccessStateImpl) then) =
      __$$TaskSaveSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int timestamp, List<TasksLocal> tasks});
}

/// @nodoc
class __$$TaskSaveSuccessStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskSaveSuccessStateImpl>
    implements _$$TaskSaveSuccessStateImplCopyWith<$Res> {
  __$$TaskSaveSuccessStateImplCopyWithImpl(_$TaskSaveSuccessStateImpl _value,
      $Res Function(_$TaskSaveSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? tasks = null,
  }) {
    return _then(_$TaskSaveSuccessStateImpl(
      null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TasksLocal>,
    ));
  }
}

/// @nodoc

class _$TaskSaveSuccessStateImpl implements TaskSaveSuccessState {
  const _$TaskSaveSuccessStateImpl(this.timestamp, final List<TasksLocal> tasks)
      : _tasks = tasks;

  @override
  final int timestamp;
  final List<TasksLocal> _tasks;
  @override
  List<TasksLocal> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskState.taskSaveSuccess(timestamp: $timestamp, tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskSaveSuccessStateImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, timestamp, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskSaveSuccessStateImplCopyWith<_$TaskSaveSuccessStateImpl>
      get copyWith =>
          __$$TaskSaveSuccessStateImplCopyWithImpl<_$TaskSaveSuccessStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int timestamp) taskSaving,
    required TResult Function(
            int timestamp, List<TaskDetailsValidationError> error)
        taskCreationInvalid,
    required TResult Function(int timestamp, List<TasksLocal> tasks)
        taskSaveSuccess,
    required TResult Function(int timestamp, String error) taskaveFailure,
  }) {
    return taskSaveSuccess(timestamp, tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int timestamp)? taskSaving,
    TResult? Function(int timestamp, List<TaskDetailsValidationError> error)?
        taskCreationInvalid,
    TResult? Function(int timestamp, List<TasksLocal> tasks)? taskSaveSuccess,
    TResult? Function(int timestamp, String error)? taskaveFailure,
  }) {
    return taskSaveSuccess?.call(timestamp, tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int timestamp)? taskSaving,
    TResult Function(int timestamp, List<TaskDetailsValidationError> error)?
        taskCreationInvalid,
    TResult Function(int timestamp, List<TasksLocal> tasks)? taskSaveSuccess,
    TResult Function(int timestamp, String error)? taskaveFailure,
    required TResult orElse(),
  }) {
    if (taskSaveSuccess != null) {
      return taskSaveSuccess(timestamp, tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TaskSavingState value) taskSaving,
    required TResult Function(TaskDetailsInvalid value) taskCreationInvalid,
    required TResult Function(TaskSaveSuccessState value) taskSaveSuccess,
    required TResult Function(TaskDetailsSaveFailureState value) taskaveFailure,
  }) {
    return taskSaveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TaskSavingState value)? taskSaving,
    TResult? Function(TaskDetailsInvalid value)? taskCreationInvalid,
    TResult? Function(TaskSaveSuccessState value)? taskSaveSuccess,
    TResult? Function(TaskDetailsSaveFailureState value)? taskaveFailure,
  }) {
    return taskSaveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TaskSavingState value)? taskSaving,
    TResult Function(TaskDetailsInvalid value)? taskCreationInvalid,
    TResult Function(TaskSaveSuccessState value)? taskSaveSuccess,
    TResult Function(TaskDetailsSaveFailureState value)? taskaveFailure,
    required TResult orElse(),
  }) {
    if (taskSaveSuccess != null) {
      return taskSaveSuccess(this);
    }
    return orElse();
  }
}

abstract class TaskSaveSuccessState implements TaskState {
  const factory TaskSaveSuccessState(
          final int timestamp, final List<TasksLocal> tasks) =
      _$TaskSaveSuccessStateImpl;

  int get timestamp;
  List<TasksLocal> get tasks;
  @JsonKey(ignore: true)
  _$$TaskSaveSuccessStateImplCopyWith<_$TaskSaveSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDetailsSaveFailureStateImplCopyWith<$Res> {
  factory _$$TaskDetailsSaveFailureStateImplCopyWith(
          _$TaskDetailsSaveFailureStateImpl value,
          $Res Function(_$TaskDetailsSaveFailureStateImpl) then) =
      __$$TaskDetailsSaveFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int timestamp, String error});
}

/// @nodoc
class __$$TaskDetailsSaveFailureStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskDetailsSaveFailureStateImpl>
    implements _$$TaskDetailsSaveFailureStateImplCopyWith<$Res> {
  __$$TaskDetailsSaveFailureStateImplCopyWithImpl(
      _$TaskDetailsSaveFailureStateImpl _value,
      $Res Function(_$TaskDetailsSaveFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? error = null,
  }) {
    return _then(_$TaskDetailsSaveFailureStateImpl(
      null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskDetailsSaveFailureStateImpl implements TaskDetailsSaveFailureState {
  const _$TaskDetailsSaveFailureStateImpl(this.timestamp, this.error);

  @override
  final int timestamp;
  @override
  final String error;

  @override
  String toString() {
    return 'TaskState.taskaveFailure(timestamp: $timestamp, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailsSaveFailureStateImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timestamp, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailsSaveFailureStateImplCopyWith<_$TaskDetailsSaveFailureStateImpl>
      get copyWith => __$$TaskDetailsSaveFailureStateImplCopyWithImpl<
          _$TaskDetailsSaveFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int timestamp) taskSaving,
    required TResult Function(
            int timestamp, List<TaskDetailsValidationError> error)
        taskCreationInvalid,
    required TResult Function(int timestamp, List<TasksLocal> tasks)
        taskSaveSuccess,
    required TResult Function(int timestamp, String error) taskaveFailure,
  }) {
    return taskaveFailure(timestamp, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int timestamp)? taskSaving,
    TResult? Function(int timestamp, List<TaskDetailsValidationError> error)?
        taskCreationInvalid,
    TResult? Function(int timestamp, List<TasksLocal> tasks)? taskSaveSuccess,
    TResult? Function(int timestamp, String error)? taskaveFailure,
  }) {
    return taskaveFailure?.call(timestamp, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int timestamp)? taskSaving,
    TResult Function(int timestamp, List<TaskDetailsValidationError> error)?
        taskCreationInvalid,
    TResult Function(int timestamp, List<TasksLocal> tasks)? taskSaveSuccess,
    TResult Function(int timestamp, String error)? taskaveFailure,
    required TResult orElse(),
  }) {
    if (taskaveFailure != null) {
      return taskaveFailure(timestamp, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TaskSavingState value) taskSaving,
    required TResult Function(TaskDetailsInvalid value) taskCreationInvalid,
    required TResult Function(TaskSaveSuccessState value) taskSaveSuccess,
    required TResult Function(TaskDetailsSaveFailureState value) taskaveFailure,
  }) {
    return taskaveFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TaskSavingState value)? taskSaving,
    TResult? Function(TaskDetailsInvalid value)? taskCreationInvalid,
    TResult? Function(TaskSaveSuccessState value)? taskSaveSuccess,
    TResult? Function(TaskDetailsSaveFailureState value)? taskaveFailure,
  }) {
    return taskaveFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TaskSavingState value)? taskSaving,
    TResult Function(TaskDetailsInvalid value)? taskCreationInvalid,
    TResult Function(TaskSaveSuccessState value)? taskSaveSuccess,
    TResult Function(TaskDetailsSaveFailureState value)? taskaveFailure,
    required TResult orElse(),
  }) {
    if (taskaveFailure != null) {
      return taskaveFailure(this);
    }
    return orElse();
  }
}

abstract class TaskDetailsSaveFailureState implements TaskState {
  const factory TaskDetailsSaveFailureState(
          final int timestamp, final String error) =
      _$TaskDetailsSaveFailureStateImpl;

  int get timestamp;
  String get error;
  @JsonKey(ignore: true)
  _$$TaskDetailsSaveFailureStateImplCopyWith<_$TaskDetailsSaveFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
