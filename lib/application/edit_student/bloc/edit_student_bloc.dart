import 'dart:developer';


import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:sample_student_record/db/model/data_model.dart';

part 'edit_student_event.dart';
part 'edit_student_state.dart';
part 'edit_student_bloc.freezed.dart';

class EditStudentBloc extends Bloc<EditStudentEvent, EditStudentState> {
  EditStudentBloc() : super(EditStudentState.initial()) {
    final Box<StudentModel> studentBox = Hive.box('Student_db');
    on<UpdateUserImage>((event, emit) {
      final Student = StudentModel(
        profile_image: event.EditedImage,
        name: state.student.name,
        age: state.student.age,
        batch: state.student.batch,
        year: state.student.year,
      );
      emit(EditStudentState(student: Student));
    });

    on<EditUserData>(((event, emit)async {
      await studentBox.put(event.key, event.student);
      log(event.student.toString());
    }));
  }
}
