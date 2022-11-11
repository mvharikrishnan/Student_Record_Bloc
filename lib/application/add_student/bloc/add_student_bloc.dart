import 'dart:developer';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:sample_student_record/db/model/data_model.dart';

part 'add_student_event.dart';
part 'add_student_state.dart';
part 'add_student_bloc.freezed.dart';

class AddStudentBloc extends Bloc<AddStudentEvent, AddStudentState> {
  AddStudentBloc() : super(AddStudentState.initial()) {
    final Box<StudentModel> StudentHiveBox = Hive.box('Student_db');

    on<SaveStudentData>((event, emit) async {
      await StudentHiveBox.add(event.student);
      log('Data Added to  Hive');
      final StudentDataCleared = StudentModel(
        profile_image: '',
        name: '',
        age: '',
        batch: '',
        year: '',
      );
      emit(AddStudentState(student: StudentDataCleared));
    });

    on<StudentImageReplace>((event, emit) {
      final Student = StudentModel(
          profile_image: state.student.profile_image,
          name: state.student.name,
          age: state.student.age,
          batch: state.student.batch,
          year: state.student.year);

      emit(AddStudentState(student: Student));
      log('Image changed');
    });
  }
}
