import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vdo/models/student_model/student.dart';
import 'package:vdo/providers/student_provider.dart';

class AddBooks extends StatefulWidget {
  const AddBooks({Key? key}) : super(key: key);

  @override
  State<AddBooks> createState() => _AddBooksState();
}

class _AddBooksState extends State<AddBooks> {
  bool _loading = false;

  @override
  void initState() {
    super.initState();
  }

  final TextEditingController _rollNo = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _studentClass = TextEditingController();
  final TextEditingController _age = TextEditingController();
  final TextEditingController _gender = TextEditingController();
  final TextEditingController _email = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _rollNo.dispose();
    _name.dispose();
    _studentClass.dispose();
    _age.dispose();
    _gender.dispose();
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Add Students'),
        centerTitle: true,
        // backgroundColor: Colors.,
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Center(
            child: Text(
              'Add the Students Record',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _rollNo,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              contentPadding: EdgeInsets.all(13),
              fillColor: Color(0xffF4F5F7),
              hintText: 'Roll no',
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              border: OutlineInputBorder(
                // borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _name,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              contentPadding: EdgeInsets.all(13),
              fillColor: Color(0xffF4F5F7),
              hintText: 'name',
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _studentClass,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              contentPadding: EdgeInsets.all(13),
              fillColor: Color(0xffF4F5F7),
              hintText: 'student class',
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _age,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              contentPadding: EdgeInsets.all(13),
              fillColor: Color(0xffF4F5F7),
              hintText: 'age',
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _gender,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              contentPadding: EdgeInsets.all(13),
              fillColor: Color(0xffF4F5F7),
              hintText: 'gender',
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _email,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              contentPadding: EdgeInsets.all(13),
              fillColor: Color(0xffF4F5F7),
              hintText: 'email',
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              _loading = true;
              Provider.of<StudentProvider>(context, listen: false).addStudent(
                Student(
                  rollNo: int.parse(_rollNo.text),
                  name: _name.text,
                  studentClass: _studentClass.text,
                  age: int.parse(_age.text),
                  gender: _gender.text,
                  email: _email.text,
                ),
              ); // pass your controller variables here
              _loading = false;
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: Color(0xff5449F8),
              minimumSize: Size(MediaQuery.of(context).size.width, 45),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
            ),
            child: Text(
              'Add',
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          )
        ],
      ),
    );
  }
}
