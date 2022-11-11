part of 'search_student_bloc.dart';

@freezed
class SearchStudentEvent with _$SearchStudentEvent {
  const factory SearchStudentEvent.searchStudentList(
      {required String SearchValue}) = SearchStudentList;

      const factory SearchStudentEvent.initialSearch() = InitialSearch;
}
