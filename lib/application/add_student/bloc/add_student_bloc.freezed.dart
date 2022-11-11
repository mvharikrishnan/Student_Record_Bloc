// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddStudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel student) saveStudentData,
    required TResult Function(String imagePath) studentImageReplace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StudentModel student)? saveStudentData,
    TResult? Function(String imagePath)? studentImageReplace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel student)? saveStudentData,
    TResult Function(String imagePath)? studentImageReplace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveStudentData value) saveStudentData,
    required TResult Function(StudentImageReplace value) studentImageReplace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveStudentData value)? saveStudentData,
    TResult? Function(StudentImageReplace value)? studentImageReplace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveStudentData value)? saveStudentData,
    TResult Function(StudentImageReplace value)? studentImageReplace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentEventCopyWith<$Res> {
  factory $AddStudentEventCopyWith(
          AddStudentEvent value, $Res Function(AddStudentEvent) then) =
      _$AddStudentEventCopyWithImpl<$Res, AddStudentEvent>;
}

/// @nodoc
class _$AddStudentEventCopyWithImpl<$Res, $Val extends AddStudentEvent>
    implements $AddStudentEventCopyWith<$Res> {
  _$AddStudentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SaveStudentDataCopyWith<$Res> {
  factory _$$SaveStudentDataCopyWith(
          _$SaveStudentData value, $Res Function(_$SaveStudentData) then) =
      __$$SaveStudentDataCopyWithImpl<$Res>;
  @useResult
  $Res call({StudentModel student});
}

/// @nodoc
class __$$SaveStudentDataCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$SaveStudentData>
    implements _$$SaveStudentDataCopyWith<$Res> {
  __$$SaveStudentDataCopyWithImpl(
      _$SaveStudentData _value, $Res Function(_$SaveStudentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_$SaveStudentData(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$SaveStudentData implements SaveStudentData {
  const _$SaveStudentData({required this.student});

  @override
  final StudentModel student;

  @override
  String toString() {
    return 'AddStudentEvent.saveStudentData(student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveStudentData &&
            (identical(other.student, student) || other.student == student));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveStudentDataCopyWith<_$SaveStudentData> get copyWith =>
      __$$SaveStudentDataCopyWithImpl<_$SaveStudentData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel student) saveStudentData,
    required TResult Function(String imagePath) studentImageReplace,
  }) {
    return saveStudentData(student);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StudentModel student)? saveStudentData,
    TResult? Function(String imagePath)? studentImageReplace,
  }) {
    return saveStudentData?.call(student);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel student)? saveStudentData,
    TResult Function(String imagePath)? studentImageReplace,
    required TResult orElse(),
  }) {
    if (saveStudentData != null) {
      return saveStudentData(student);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveStudentData value) saveStudentData,
    required TResult Function(StudentImageReplace value) studentImageReplace,
  }) {
    return saveStudentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveStudentData value)? saveStudentData,
    TResult? Function(StudentImageReplace value)? studentImageReplace,
  }) {
    return saveStudentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveStudentData value)? saveStudentData,
    TResult Function(StudentImageReplace value)? studentImageReplace,
    required TResult orElse(),
  }) {
    if (saveStudentData != null) {
      return saveStudentData(this);
    }
    return orElse();
  }
}

abstract class SaveStudentData implements AddStudentEvent {
  const factory SaveStudentData({required final StudentModel student}) =
      _$SaveStudentData;

  StudentModel get student;
  @JsonKey(ignore: true)
  _$$SaveStudentDataCopyWith<_$SaveStudentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StudentImageReplaceCopyWith<$Res> {
  factory _$$StudentImageReplaceCopyWith(_$StudentImageReplace value,
          $Res Function(_$StudentImageReplace) then) =
      __$$StudentImageReplaceCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$StudentImageReplaceCopyWithImpl<$Res>
    extends _$AddStudentEventCopyWithImpl<$Res, _$StudentImageReplace>
    implements _$$StudentImageReplaceCopyWith<$Res> {
  __$$StudentImageReplaceCopyWithImpl(
      _$StudentImageReplace _value, $Res Function(_$StudentImageReplace) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$StudentImageReplace(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudentImageReplace implements StudentImageReplace {
  const _$StudentImageReplace({required this.imagePath});

  @override
  final String imagePath;

  @override
  String toString() {
    return 'AddStudentEvent.studentImageReplace(imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImageReplace &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImageReplaceCopyWith<_$StudentImageReplace> get copyWith =>
      __$$StudentImageReplaceCopyWithImpl<_$StudentImageReplace>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel student) saveStudentData,
    required TResult Function(String imagePath) studentImageReplace,
  }) {
    return studentImageReplace(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StudentModel student)? saveStudentData,
    TResult? Function(String imagePath)? studentImageReplace,
  }) {
    return studentImageReplace?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel student)? saveStudentData,
    TResult Function(String imagePath)? studentImageReplace,
    required TResult orElse(),
  }) {
    if (studentImageReplace != null) {
      return studentImageReplace(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveStudentData value) saveStudentData,
    required TResult Function(StudentImageReplace value) studentImageReplace,
  }) {
    return studentImageReplace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveStudentData value)? saveStudentData,
    TResult? Function(StudentImageReplace value)? studentImageReplace,
  }) {
    return studentImageReplace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveStudentData value)? saveStudentData,
    TResult Function(StudentImageReplace value)? studentImageReplace,
    required TResult orElse(),
  }) {
    if (studentImageReplace != null) {
      return studentImageReplace(this);
    }
    return orElse();
  }
}

abstract class StudentImageReplace implements AddStudentEvent {
  const factory StudentImageReplace({required final String imagePath}) =
      _$StudentImageReplace;

  String get imagePath;
  @JsonKey(ignore: true)
  _$$StudentImageReplaceCopyWith<_$StudentImageReplace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddStudentState {
  StudentModel get student => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStudentStateCopyWith<AddStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentStateCopyWith<$Res> {
  factory $AddStudentStateCopyWith(
          AddStudentState value, $Res Function(AddStudentState) then) =
      _$AddStudentStateCopyWithImpl<$Res, AddStudentState>;
  @useResult
  $Res call({StudentModel student});
}

/// @nodoc
class _$AddStudentStateCopyWithImpl<$Res, $Val extends AddStudentState>
    implements $AddStudentStateCopyWith<$Res> {
  _$AddStudentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_value.copyWith(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddStudentStateCopyWith<$Res>
    implements $AddStudentStateCopyWith<$Res> {
  factory _$$_AddStudentStateCopyWith(
          _$_AddStudentState value, $Res Function(_$_AddStudentState) then) =
      __$$_AddStudentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StudentModel student});
}

/// @nodoc
class __$$_AddStudentStateCopyWithImpl<$Res>
    extends _$AddStudentStateCopyWithImpl<$Res, _$_AddStudentState>
    implements _$$_AddStudentStateCopyWith<$Res> {
  __$$_AddStudentStateCopyWithImpl(
      _$_AddStudentState _value, $Res Function(_$_AddStudentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_$_AddStudentState(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$_AddStudentState implements _AddStudentState {
  const _$_AddStudentState({required this.student});

  @override
  final StudentModel student;

  @override
  String toString() {
    return 'AddStudentState(student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddStudentState &&
            (identical(other.student, student) || other.student == student));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddStudentStateCopyWith<_$_AddStudentState> get copyWith =>
      __$$_AddStudentStateCopyWithImpl<_$_AddStudentState>(this, _$identity);
}

abstract class _AddStudentState implements AddStudentState {
  const factory _AddStudentState({required final StudentModel student}) =
      _$_AddStudentState;

  @override
  StudentModel get student;
  @override
  @JsonKey(ignore: true)
  _$$_AddStudentStateCopyWith<_$_AddStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
