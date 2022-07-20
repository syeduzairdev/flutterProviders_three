import 'package:vdo/models/student_model/student.dart';

class StudentRepository {
//   private list variable
  List<Student> _listOfStudents = [];

//   function that will return List<Studen>
  List<Student> getStudentList() {
//     add student 1
    Student _oneStudent = Student(
        name: "Ayaz Faysal",
        studentClass: "2nd Year",
        age: 20,
        gender: "male",
        email: "ayazfaisal@gmail.com",
        rollNo: 123);

    _listOfStudents.add(_oneStudent);

    //     add student 2
    Student _twoStudent = Student(
        name: "Syed Uzair",
        studentClass: "16",
        age: 21,
        gender: "male",
        email: "uzairhassan206@gmail.com",
        rollNo: 047);

    _listOfStudents.add(_twoStudent);
    //     add student 3
    Student _threeStudent = Student(
        name: "Syed arbaz",
        studentClass: "21",
        age: 29,
        gender: "male",
        email: "arbaz206@gmail.com",
        rollNo: 047);

    _listOfStudents.add(_threeStudent);
    //     add student 4
    Student _fourStudent = Student(
        name: "wasif",
        studentClass: "14",
        age: 23,
        gender: "male",
        email: "wasif06@gmail.com",
        rollNo: 047);

    _listOfStudents.add(_fourStudent);
    //     add student 5
    Student _fiveStudent = Student(
        name: "Sameer",
        studentClass: "11",
        age: 12,
        gender: "male",
        email: "sameer@gmail.com",
        rollNo: 047);

    _listOfStudents.add(_fiveStudent);

    return _listOfStudents;
  }
}
