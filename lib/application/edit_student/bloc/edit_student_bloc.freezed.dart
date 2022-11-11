// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditStudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String EditedImage) updateUserImage,
    required TResult Function(StudentModel student, int key) editUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String EditedImage)? updateUserImage,
    TResult? Function(StudentModel student, int key)? editUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String EditedImage)? updateUserImage,
    TResult Function(StudentModel student, int key)? editUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserImage value) updateUserImage,
    required TResult Function(EditUserData value) editUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserImage value)? updateUserImage,
    TResult? Function(EditUserData value)? editUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserImage value)? updateUserImage,
    TResult Function(EditUserData value)? editUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStudentEventCopyWith<$Res> {
  factory $EditStudentEventCopyWith(
          EditStudentEvent value, $Res Function(EditStudentEvent) then) =
      _$EditStudentEventCopyWithImpl<$Res, EditStudentEvent>;
}

/// @nodoc
class _$EditStudentEventCopyWithImpl<$Res, $Val extends EditStudentEvent>
    implements $EditStudentEventCopyWith<$Res> {
  _$EditStudentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateUserImageCopyWith<$Res> {
  factory _$$UpdateUserImageCopyWith(
          _$UpdateUserImage value, $Res Function(_$UpdateUserImage) then) =
      __$$UpdateUserImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String EditedImage});
}

/// @nodoc
class __$$UpdateUserImageCopyWithImpl<$Res>
    extends _$EditStudentEventCopyWithImpl<$Res, _$UpdateUserImage>
    implements _$$UpdateUserImageCopyWith<$Res> {
  __$$UpdateUserImageCopyWithImpl(
      _$UpdateUserImage _value, $Res Function(_$UpdateUserImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? EditedImage = null,
  }) {
    return _then(_$UpdateUserImage(
      EditedImage: null == EditedImage
          ? _value.EditedImage
          : EditedImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserImage
    with DiagnosticableTreeMixin
    implements UpdateUserImage {
  const _$UpdateUserImage({required this.EditedImage});

  @override
  final String EditedImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditStudentEvent.updateUserImage(EditedImage: $EditedImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditStudentEvent.updateUserImage'))
      ..add(DiagnosticsProperty('EditedImage', EditedImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserImage &&
            (identical(other.EditedImage, EditedImage) ||
                other.EditedImage == EditedImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, EditedImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImageCopyWith<_$UpdateUserImage> get copyWith =>
      __$$UpdateUserImageCopyWithImpl<_$UpdateUserImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String EditedImage) updateUserImage,
    required TResult Function(StudentModel student, int key) editUserData,
  }) {
    return updateUserImage(EditedImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String EditedImage)? updateUserImage,
    TResult? Function(StudentModel student, int key)? editUserData,
  }) {
    return updateUserImage?.call(EditedImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String EditedImage)? updateUserImage,
    TResult Function(StudentModel student, int key)? editUserData,
    required TResult orElse(),
  }) {
    if (updateUserImage != null) {
      return updateUserImage(EditedImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserImage value) updateUserImage,
    required TResult Function(EditUserData value) editUserData,
  }) {
    return updateUserImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserImage value)? updateUserImage,
    TResult? Function(EditUserData value)? editUserData,
  }) {
    return updateUserImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserImage value)? updateUserImage,
    TResult Function(EditUserData value)? editUserData,
    required TResult orElse(),
  }) {
    if (updateUserImage != null) {
      return updateUserImage(this);
    }
    return orElse();
  }
}

abstract class UpdateUserImage implements EditStudentEvent {
  const factory UpdateUserImage({required final String EditedImage}) =
      _$UpdateUserImage;

  String get EditedImage;
  @JsonKey(ignore: true)
  _$$UpdateUserImageCopyWith<_$UpdateUserImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditUserDataCopyWith<$Res> {
  factory _$$EditUserDataCopyWith(
          _$EditUserData value, $Res Function(_$EditUserData) then) =
      __$$EditUserDataCopyWithImpl<$Res>;
  @useResult
  $Res call({StudentModel student, int key});
}

/// @nodoc
class __$$EditUserDataCopyWithImpl<$Res>
    extends _$EditStudentEventCopyWithImpl<$Res, _$EditUserData>
    implements _$$EditUserDataCopyWith<$Res> {
  __$$EditUserDataCopyWithImpl(
      _$EditUserData _value, $Res Function(_$EditUserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
    Object? key = null,
  }) {
    return _then(_$EditUserData(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditUserData with DiagnosticableTreeMixin implements EditUserData {
  const _$EditUserData({required this.student, required this.key});

  @override
  final StudentModel student;
  @override
  final int key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditStudentEvent.editUserData(student: $student, key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditStudentEvent.editUserData'))
      ..add(DiagnosticsProperty('student', student))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUserData &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUserDataCopyWith<_$EditUserData> get copyWith =>
      __$$EditUserDataCopyWithImpl<_$EditUserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String EditedImage) updateUserImage,
    required TResult Function(StudentModel student, int key) editUserData,
  }) {
    return editUserData(student, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String EditedImage)? updateUserImage,
    TResult? Function(StudentModel student, int key)? editUserData,
  }) {
    return editUserData?.call(student, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String EditedImage)? updateUserImage,
    TResult Function(StudentModel student, int key)? editUserData,
    required TResult orElse(),
  }) {
    if (editUserData != null) {
      return editUserData(student, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserImage value) updateUserImage,
    required TResult Function(EditUserData value) editUserData,
  }) {
    return editUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserImage value)? updateUserImage,
    TResult? Function(EditUserData value)? editUserData,
  }) {
    return editUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserImage value)? updateUserImage,
    TResult Function(EditUserData value)? editUserData,
    required TResult orElse(),
  }) {
    if (editUserData != null) {
      return editUserData(this);
    }
    return orElse();
  }
}

abstract class EditUserData implements EditStudentEvent {
  const factory EditUserData(
      {required final StudentModel student,
      required final int key}) = _$EditUserData;

  StudentModel get student;
  int get key;
  @JsonKey(ignore: true)
  _$$EditUserDataCopyWith<_$EditUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditStudentState {
  StudentModel get student => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditStudentStateCopyWith<EditStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStudentStateCopyWith<$Res> {
  factory $EditStudentStateCopyWith(
          EditStudentState value, $Res Function(EditStudentState) then) =
      _$EditStudentStateCopyWithImpl<$Res, EditStudentState>;
  @useResult
  $Res call({StudentModel student});
}

/// @nodoc
class _$EditStudentStateCopyWithImpl<$Res, $Val extends EditStudentState>
    implements $EditStudentStateCopyWith<$Res> {
  _$EditStudentStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_EditStudentStateCopyWith<$Res>
    implements $EditStudentStateCopyWith<$Res> {
  factory _$$_EditStudentStateCopyWith(
          _$_EditStudentState value, $Res Function(_$_EditStudentState) then) =
      __$$_EditStudentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StudentModel student});
}

/// @nodoc
class __$$_EditStudentStateCopyWithImpl<$Res>
    extends _$EditStudentStateCopyWithImpl<$Res, _$_EditStudentState>
    implements _$$_EditStudentStateCopyWith<$Res> {
  __$$_EditStudentStateCopyWithImpl(
      _$_EditStudentState _value, $Res Function(_$_EditStudentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_$_EditStudentState(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$_EditStudentState
    with DiagnosticableTreeMixin
    implements _EditStudentState {
  const _$_EditStudentState({required this.student});

  @override
  final StudentModel student;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditStudentState(student: $student)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditStudentState'))
      ..add(DiagnosticsProperty('student', student));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditStudentState &&
            (identical(other.student, student) || other.student == student));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditStudentStateCopyWith<_$_EditStudentState> get copyWith =>
      __$$_EditStudentStateCopyWithImpl<_$_EditStudentState>(this, _$identity);
}

abstract class _EditStudentState implements EditStudentState {
  const factory _EditStudentState({required final StudentModel student}) =
      _$_EditStudentState;

  @override
  StudentModel get student;
  @override
  @JsonKey(ignore: true)
  _$$_EditStudentStateCopyWith<_$_EditStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
