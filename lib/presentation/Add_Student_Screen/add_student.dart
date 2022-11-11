import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'package:sample_student_record/application/add_student/bloc/add_student_bloc.dart';


import 'package:sample_student_record/db/model/data_model.dart';

class Add_student extends StatelessWidget {
  Add_student({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();
  // controller
  final _nameController = TextEditingController();

  final _ageController = TextEditingController();

  final _batchController = TextEditingController();

  final _yearController = TextEditingController();

  final ImagePicker picker = ImagePicker();

  String? ImageFile;

  void takePhoto(ImageSource source, BuildContext context) async {
    final getimage = await picker.pickImage(source: source);
    if (getimage == null) {
      return;
    }
    ImageFile = getimage.path;

    log(getimage.path);
    BlocProvider.of<AddStudentBloc>(context)
        .add(StudentImageReplace(imagePath: ImageFile!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Form(
        key: _formkey,
        child: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/background.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
              height: MediaQuery.of(context).size.height * 0.901,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        'ADD STUDENTS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    imageProfieGet(context),
                    const SizedBox(
                      height: 20,
                    ),
                    textformFieldFunction(
                      _nameController,
                      'Name',
                      TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your Name';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    textformFieldFunction(
                      _ageController,
                      'Age',
                      TextInputType.number,
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
                    const SizedBox(
                      height: 20,
                    ),
                    textformFieldFunction(
                      _batchController,
                      'Batch',
                      TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Batch';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    textformFieldFunction(
                      _yearController,
                      'Year',
                      TextInputType.number,
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
                  const  SizedBox(
                      height: 30,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          onAddStudentButtonClick(context);
                        }
                      },
                      icon: const Icon(Icons.person_add_alt_1_sharp),
                      label: const Text('ADD'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onAddStudentButtonClick(BuildContext context) async {
    final name = _nameController.text.trim();
    final age = _ageController.text.trim();
    final batch = _batchController.text.trim();
    final year = _yearController.text.trim();

    if (name.isEmpty ||
        age.isEmpty ||
        batch.isEmpty ||
        year.isEmpty ||
        ImageFile == null) {
      return log('The Forms is empty');
    }
    log('$name,$age,$batch,$year,$ImageFile');
    final student = StudentModel(
      name: name,
      age: age,
      batch: batch,
      year: year,
      profile_image: ImageFile!,
    );

    BlocProvider.of<AddStudentBloc>(context)
        .add(SaveStudentData(student: student));
    // addStudent(_student);
    log('Student Data Successfully Added');
    AddSnackBAr(context);
    // clearText();
  }

  // For Clearing Datas in the text form Field
  // clearText(BuildContext context) {
  //   _nameController.clear();
  //   _ageController.clear();
  //   _yearController.clear();
  //   _batchController.clear();
  //   BlocProvider.of<AddStudentBloc>(context).add(event)
  // setState(() {
  //   _ImageFile = null;
  // });
  // }

  //Function for Text Form Field
  Widget textformFieldFunction(
      TextEditingController controller, String labelText, TextInputType type,
      {required String? Function(dynamic value) validator}) {
    return BlocBuilder<AddStudentBloc, AddStudentState>(
      builder: (context, state) {
        return TextFormField(
          validator: validator,
          controller: controller,
          keyboardType: type,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      },
    );
  }

  //Function for Text Form Field End
  imageProfieGet(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<AddStudentBloc, AddStudentState>(
          builder: (context, state) {
            return CircleAvatar(
              radius: 70,
              backgroundImage: (ImageFile != null)
                  ? FileImage(File(ImageFile!))
                  : const AssetImage('assets/images/user_icon.png')
                      as ImageProvider,
            );
          },
        ),
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
            child:const Icon(
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
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
        const  Text(
            'Choose Profile Photo',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
         const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera, context);
                },
                icon:const Icon(Icons.photo_camera_rounded),
                label:const Text('Camera'),
              ),
              TextButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery, context);
                },
                icon:const Icon(Icons.image),
                label:const Text('Gallery'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  AddSnackBAr(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
     const SnackBar(
        content: Text(
          'Sucessfully Added Record',
        ),
        backgroundColor: Colors.blue,
      ),
    );
    Navigator.pop(context);
  }
}
