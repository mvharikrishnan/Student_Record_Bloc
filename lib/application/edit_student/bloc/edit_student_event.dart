part of 'edit_student_bloc.dart';

@freezed
class EditStudentEvent with _$EditStudentEvent {
  const factory EditStudentEvent.updateUserImage({required String EditedImage}) = UpdateUserImage;

  const factory EditStudentEvent.editUserData({required StudentModel student,required int key}) = EditUserData;
}