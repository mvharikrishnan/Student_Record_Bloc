//import 'dart:html';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:sample_student_record/application/search_student/bloc/search_student_bloc.dart';
import 'package:sample_student_record/db/model/data_model.dart';
import 'package:sample_student_record/presentation/View_Student_Screen/studentProfile.dart';

class Search_Screen extends StatelessWidget {
  Search_Screen({Key? key}) : super(key: key);

  final _searchController = TextEditingController();

  final List<StudentModel> studentBoxList =
      Hive.box<StudentModel>('Student_db').values.toList();

  late List<StudentModel> displayStudent =
      List<StudentModel>.from(studentBoxList);

  // void searchStudentList(String value) {
  // setState(() {
  //   displayStudent = studentBoxList
  //       .where((element) =>
  //           element.name.toLowerCase().contains(value.toLowerCase()))
  //       .toList();
  // });
  // }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchStudentBloc>(context).add(const InitialSearch());
    });
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Students'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                return;
              },
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search Students',
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onChanged: (value) {
                BlocProvider.of<SearchStudentBloc>(context)
                    .add(SearchStudentList(SearchValue: value));
              },
            ),
            SizedBox(
              height: 20,
            ),
            BlocBuilder<SearchStudentBloc, SearchStudentState>(
              builder: (context, state) {
                return Expanded(
                  child: (state.searchedList.isNotEmpty)
                      ? ListView.separated(
                          itemBuilder: (context, index) {
                            final data =state.searchedList[index];
                            File imageFile =
                                File(state.searchedList[index].profile_image);

                            return Card(
                              color: Colors.white,
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: FileImage(imageFile),
                                  //radius: 50,
                                ),
                                title: Text(
                                 state.searchedList[index].name,
                                  style: TextStyle(color: Colors.black),
                                ),
                                subtitle: Text(state.searchedList[index].age),
                                trailing: Text(
                                    'BATCH: ${state.searchedList[index].batch}'),
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => StudentProfile_view(
                                      dataListScren: data,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: state.searchedList.length,
                        )
                      : Center(
                          child: Container(
                            color: Colors.white,
                            height: 30,
                            width: 200,
                            child: Center(
                              child: Text("Student Not Found!"),
                            ),
                          ),
                        ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
