part of 'add_student_bloc.dart';

@freezed
class AddStudentState with _$AddStudentState {
  const factory AddStudentState({
    required StudentModel student,
  }) = _AddStudentState;

  factory AddStudentState.initial() {
    return AddStudentState(
      student: StudentModel(
          profile_image: '',
          name: '',
          age: '',
          batch: '',
          year: ''),
    );
  }
}
