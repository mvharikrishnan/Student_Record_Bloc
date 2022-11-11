part of 'edit_student_bloc.dart';

@freezed
class EditStudentState with _$EditStudentState {
  const factory EditStudentState({required StudentModel student}) =
      _EditStudentState;

  factory EditStudentState.initial() {
    return EditStudentState(
        student: StudentModel(
      profile_image: '',
      name: '',
      age: '',
      batch: '',
      year: '',
    ));
  }
}
