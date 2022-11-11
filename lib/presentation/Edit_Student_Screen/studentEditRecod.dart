import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_picker/image_picker.dart';
import 'package:sample_student_record/application/edit_student/bloc/edit_student_bloc.dart';
import 'package:sample_student_record/db/functions/boxes.dart';

import 'package:sample_student_record/db/functions/db_functions.dart';
import 'package:sample_student_record/db/model/data_model.dart';
// ignore_for_file: prefer_const_constructors

class Student_Record_Edit extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  String ImageFile;
  Student_Record_Edit({
    required this.student,
    required this.studentKey,
    required this.ImageFile,
    Key? key,
  }) : super(key: key);
  // getControllerValues() {
  //   log('Rebuilding');
  //   _nameController = TextEditingController(text: student.name);
  //   _ageController = TextEditingController(text: student.age);
  //   _batchController = TextEditingController(text: student.batch);
  //   _yearController = TextEditingController(text: student.year);
  //   ImageFile = student.profile_image;
  // }
  final StudentModel student;
  final dynamic studentKey;
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _batchController = TextEditingController();
  final _yearController = TextEditingController();

  void takePhoto(ImageSource source, BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final getimage = await picker.pickImage(
      source: source,
      //preferredCameraDevice: CameraDevice.front,
    );

    ImageFile = getimage!.path;
    BlocProvider.of<EditStudentBloc>(context)
        .add(UpdateUserImage(EditedImage: ImageFile));
    // _ImageFile = getimage;
  }

  Future<void> onEditStudentButtonClick(BuildContext context, int id) async {
    // final box = Boxes.getAll();
    // List<StudentModel> gg = box.values.toList() ;
    // final data = gg[index];
  log('Save Edit Student Called');
    var _name = _nameController.text;
    var _age = _ageController.text;
    var _batch = _batchController.text;
    var _year = _yearController.text;

    // String _profile = data.profile_image;

    //print(data.batch);
  log('all new records saved');
    if (_name.isEmpty) {
      _name = student.name;
    } else {
      _nameController.text;
    }
    if (_age.isEmpty) {
    _age = student.age;
    } else {
      _ageController.text;
    }
    if (_batch.isEmpty) {
       _batch = student.batch;
    } else {
     _batchController.text;
    }
    if (_year.isEmpty) {
       _year = student.year;
    } else {
     _yearController.text;
    }
    if (ImageFile == null) {
      return;
    }

    log('$_name,$_age,$_batch,$_year');

    final _student = StudentModel(
        name: _name,
        age: _age,
        batch: _batch,
        year: _year,
        profile_image: ImageFile);

    // EditStudent(_student, id);
    BlocProvider.of<EditStudentBloc>(context)
        .add(EditUserData(student: _student, key: studentKey));
    EditSnackBAr(context);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    // getControllerValues();
    log('Rebuilding');
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
                    BlocBuilder<EditStudentBloc, EditStudentState>(
                      builder: (context, state) {
                        return imageProfieGet(context, ImageFile);
                      },
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    // textformFieldFunction(
                    //     _nameController,TextInputType.name),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // textformFieldFunction(
                    //     _ageController,TextInputType.number),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // textformFieldFunction(
                    //     _batchController,TextInputType.name),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // textformFieldFunction(
                    //     _yearController,TextInputType.number),
                    TextFormField(
                      onChanged: (value) {
                        _nameController.text = value;
                      },
                      initialValue: student.name,
                      keyboardType: TextInputType.name,
                      // controller: _nameController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefix: Text('NAME:')),
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
                      onChanged: (value) {
                        _ageController.text = value;
                      },
                      initialValue: student.age,
                      keyboardType: TextInputType.number,
                      // controller: _ageController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Age',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefix: Text('AGE:')),
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
                      onChanged: (value) {
                        _batchController.text = value;
                      },
                      initialValue: student.batch,
                      keyboardType: TextInputType.name,
                      // controller: _batchController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Batch',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefix: Text('BATCH:')),
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
                      initialValue: student.year,
                      onChanged: (value) {
                        _yearController.text = value;
                      },
                      keyboardType: TextInputType.number,
                      // controller: _yearController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Year',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefix: Text('YEAR:')),
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
                          onEditStudentButtonClick(context, studentKey);
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

  //Function for Text Form Field
  Widget textformFieldFunction(
      TextEditingController controller, TextInputType type) {
    return TextFormField(
      controller: TextEditingController(text: controller.text),
      keyboardType: type,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        // hintText: labelText,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  //Function for Text Form Field End
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
