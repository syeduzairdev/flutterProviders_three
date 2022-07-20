import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vdo/providers/student_provider.dart';
import 'package:vdo/screens/students_list/student_list.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) =>
          StudentProvider(), // constructor is getting called here for StudentProvider
      child: StudentListDemoApp(),
    ),
  );
}

class StudentListDemoApp extends StatelessWidget {
  const StudentListDemoApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: StudentList(),
    );
  }
}
