import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:sample_student_record/db/functions/db_functions.dart';
import 'package:sample_student_record/db/model/data_model.dart';
import 'package:sample_student_record/presentation/Edit_Student_Screen/editStudent.dart';
import 'package:sample_student_record/presentation/Edit_Student_Screen/studentEditRecod.dart';
import 'package:sample_student_record/presentation/search/searchuser.dart';
import 'package:sample_student_record/presentation/View_Student_Screen/studentProfile.dart';

class View_studens extends StatelessWidget {
  final Box<StudentModel> StudentBox = Hive.box('Student_db');
  View_studens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: const Text('View Student'),
        backgroundColor: Colors.black,
      ),
      body: ValueListenableBuilder(
        valueListenable: StudentBox.listenable(),
        builder:
            (BuildContext ctx, Box<StudentModel> StudentModel, Widget? child) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: (StudentBox.isNotEmpty)
                ? ListView.separated(
                    itemBuilder: (ctx, index) {
                      final key = StudentBox.keys.toList()[index];
                      final data = StudentBox.get(key);
                      return Card(
                        color: Colors.blueGrey[50],
                        child: ListTile(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => StudentProfile_view(
                                dataListScren: data!,
                              ),
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundImage:
                                FileImage(File(data!.profile_image)),
                          ),
                          title: Text(data.name),
                          subtitle: Text('Batch: ${data.batch}'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  // Navigator.of(context).push(
                                  //   MaterialPageRoute(
                                  //     builder: (ctx) => edit_student(
                                  //       student:data,
                                  //       KeyIndex: key,
                                  //     ),
                                  //   ),
                                  // );

                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (ctx) => Student_Record_Edit(
                                              student: data,
                                              studentKey: key,
                                              ImageFile: data.profile_image,
                                            )),
                                  );
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.green,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              IconButton(
                                onPressed: () {
                                  DeleteAlertBox(context, index);
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (ctx, index) {
                      return const Divider();
                    },
                    itemCount: StudentModel.length)
                : const Center(
                    child: Text(
                      "No Students Found",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Search_Screen(),
            ),
          );
        },
        child: const Icon(Icons.search),
      ),
    );
  }

  DeleteAlertBox(BuildContext context, index) {
    //cancelBUtton
    Widget cancelButton = TextButton(
      child: const Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    //ContinueButton
    Widget continueButton = TextButton(
      child: const Text("Continue"),
      onPressed: () {
        deleteStudent(index);
        Navigator.pop(context);
      },
    );

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("AlertDialog"),
          content: const Text("Would you like to Delete the record"),
          actions: [
            cancelButton,
            continueButton,
          ],
        );
      },
    );
  }
}
