part of 'add_student_bloc.dart';

@freezed
class AddStudentEvent with _$AddStudentEvent {
  const factory AddStudentEvent.saveStudentData({required StudentModel student})  = SaveStudentData;

  const factory AddStudentEvent.studentImageReplace({required String imagePath})  = StudentImageReplace;
}