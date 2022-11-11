import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_picker/image_picker.dart';
import 'package:sample_student_record/application/edit_student/bloc/edit_student_bloc.dart';

import 'package:sample_student_record/db/model/data_model.dart';
// ignore_for_file: prefer_const_constructors

class edit_student extends StatelessWidget {
  final StudentModel student;
  final dynamic KeyIndex;
  TextEditingController? nameController;
  TextEditingController? ageController;
  TextEditingController? batchController;
  TextEditingController? yearController;
  String? ImageFile;
  final _formkey = GlobalKey<FormState>();
  edit_student({
    Key? key,
    this.nameController,
    this.ageController,
    this.batchController,
    this.yearController,
    required this.student,
    required this.KeyIndex,
  }) : super(key: key);

  // String? updatedImage;

  getCurrentUserdata(BuildContext context) {
    log(" Datas Added to controllers");
    nameController = TextEditingController(text: student.name);
    ageController = TextEditingController(text: student.age);
    batchController = TextEditingController(text: student.batch);
    yearController = TextEditingController(text: student.year);
    // log(student.name);
    ImageFile = student.profile_image;
  }

  Future<void> takePhoto(ImageSource source, BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final getimage = await picker.pickImage(
      source: source,
    );

    ImageFile = getimage!.path;
    BlocProvider.of<EditStudentBloc>(context)
        .add(UpdateUserImage(EditedImage: ImageFile!));
  }

  Future<void> onEditStudentButtonClick(BuildContext context) async {
    // final box = Boxes.getAll();
    // List<StudentModel> gg = box.values.toList();
    // final data = gg[KeyIndex];

    final name = nameController!.text;
    final age = ageController!.text;
    final batch = batchController!.text;
    final year = yearController!.text;

    if (name.isEmpty ||
        age.isEmpty ||
        batch.isEmpty ||
        year.isEmpty ||
        ImageFile == null) {
      return;
    }
    log('$name,$age,$batch,$year');

    final student = StudentModel(
        name: name,
        age: age,
        batch: batch,
        year: year,
        profile_image: ImageFile!);

    // EditStudent(student, KeyIndex);
    BlocProvider.of<EditStudentBloc>(context).add(EditUserData(
      student: student,
      key: KeyIndex,
    ));
    log('Data edited');
    EditSnackBAr(context);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    getCurrentUserdata(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/background.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            // width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.901,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'EDIT STUDENTS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    imageProfieGet(context, ImageFile!),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      //  initialValue: student.name,

                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefix: Text('NAME: ')),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your Name';
                        }

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: ageController,
                      //  initialValue: student.age,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefix: Text('AGE: ')),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your age';
                        }
                        if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return 'Please enter a valid Age';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: batchController,
                      //  initialValue: student.batch,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefix: Text('BATCH: ')),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Batch';
                        }

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: yearController,
                      //  initialValue: student.year,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefix: Text('YEAR: ')),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your year';
                        }
                        if (!RegExp(r'^[0-3]+$').hasMatch(value)) {
                          return 'Please enter a valid Year';
                        }
                        return null;
                      },
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          onEditStudentButtonClick(context);
                        }
                      },
                      icon: Icon(Icons.person_add_alt_1_sharp),
                      label: Text('SAVE CHANGES'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  imageProfieGet(BuildContext context, String image) {
    return Stack(
      children: [
        CircleAvatar(radius: 70, backgroundImage: FileImage(File(image))),
        Positioned(
          bottom: 20,
          right: 20,
          child: InkWell(
            onTap: () {
              //code for ontap method
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomsheet(context)),
              );
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  //bottomsheet bar for asking the qustion for adding the image
  Widget bottomsheet(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            'Choose Profile Photo',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera, context);
                },
                icon: Icon(Icons.photo_camera_rounded),
                label: Text('Camera'),
              ),
              TextButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery, context);
                },
                icon: Icon(Icons.image),
                label: Text('Gallery'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  EditSnackBAr(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Sucessfully Edited Record',
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
