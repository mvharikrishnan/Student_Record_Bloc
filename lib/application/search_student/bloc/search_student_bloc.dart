import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sample_student_record/db/model/data_model.dart';

part 'search_student_event.dart';
part 'search_student_state.dart';
part 'search_student_bloc.freezed.dart';

class SearchStudentBloc extends Bloc<SearchStudentEvent, SearchStudentState> {
  SearchStudentBloc() : super(SearchStudentState.Initial()) {
    on<InitialSearch>((event, emit) {
      final Box<StudentModel> studentBox = Hive.box('Student_db');
      emit(SearchStudentState(
        studentList: studentBox.values.toList(),
        searchedList: studentBox.values.toList(),
      ));
    });

    on<SearchStudentList>((event, emit) {
      List<StudentModel> _searchStudentlist = state.searchedList;
      emit(SearchStudentState(
        studentList: state.studentList,
        searchedList: state.searchedList,
      ));

      _searchStudentlist = state.studentList
          .where((element) => element.name
              .toLowerCase()
              .contains(event.SearchValue.toLowerCase()))
          .toList();
      emit(SearchStudentState(
        studentList: state.studentList,
        searchedList: _searchStudentlist,
      ));
    });
  }
}
