import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vdo/models/student_model/student.dart';
import 'package:vdo/providers/student_provider.dart';
import 'package:vdo/screens/add_student.dart';

class StudentList extends StatelessWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // StudentProvider studentProvider = Provider.of<StudentProvider>(context, listen: false);
    bool _loading = false;
    return Scaffold(
        appBar: AppBar(
          title: Text('Student List'),
        ),
        body: ListView.builder(
          itemCount:
              Provider.of<StudentProvider>(context).listOfStudents.length,
          itemBuilder: (BuildContext context, int index) {
            return Consumer<StudentProvider>(
              builder: (context, model, child) {
                return Card(
                  color: Color.fromARGB(255, 215, 243, 250),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text(
                                          "Name:" +
                                              model.listOfStudents[index].name
                                                  .toString(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text("Name:" +
                                            model.listOfStudents[index]
                                                .studentClass),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text(
                                          "Age: " +
                                              model.listOfStudents[index].age
                                                  .toString(),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text("Gender: " +
                                            model.listOfStudents[index].gender
                                                .toString()),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text("Email: " +
                                            model.listOfStudents[index].email
                                                .toString()),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text("Roll no: " +
                                            model.listOfStudents[index].rollNo
                                                .toString()),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.edit,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          _loading = true;
                                          Provider.of<StudentProvider>(context,
                                                  listen: false)
                                              .deleteStudent(
                                            Student(
                                              rollNo: model
                                                  .listOfStudents[index].rollNo,
                                              name: model
                                                  .listOfStudents[index].name,
                                              studentClass: model
                                                  .listOfStudents[index]
                                                  .studentClass,
                                              age: model
                                                  .listOfStudents[index].age,
                                              gender: model
                                                  .listOfStudents[index].gender,
                                              email: model
                                                  .listOfStudents[index].email,
                                            ),
                                          ); //

                                          // Provider.of<StudentProvider>(context, listen: false).deleteStudent

                                          // pass your controller variables here
                                          _loading = false;
                                        },
                                        child: Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: (() {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => AddBooks(),
                                            ),
                                          );
                                        }),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}
