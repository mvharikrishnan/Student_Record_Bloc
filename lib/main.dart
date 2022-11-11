import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sample_student_record/application/add_student/bloc/add_student_bloc.dart';

import 'package:sample_student_record/application/edit_student/bloc/edit_student_bloc.dart';
import 'package:sample_student_record/application/search_student/bloc/search_student_bloc.dart';

import 'package:sample_student_record/db/model/data_model.dart';

import 'package:sample_student_record/presentation/splash.dart';



Future<void> main() async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
    await Hive.openBox<StudentModel>('Student_db');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddStudentBloc()),
        BlocProvider(create: (context) => EditStudentBloc()),
        BlocProvider(create: (context) => SearchStudentBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: splashScreen(),
      ),
    );
  }
}
