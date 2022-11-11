part of 'search_student_bloc.dart';

@freezed
class SearchStudentState with _$SearchStudentState {
  const factory SearchStudentState({
    required List<StudentModel> studentList,
    required List<StudentModel> searchedList,
  }) = _SearchStudentState;

  factory SearchStudentState.Initial() {
    return const SearchStudentState(
        studentList: [], searchedList: []);
  }
}
