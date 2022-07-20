import 'package:flutter/foundation.dart';
import 'package:vdo/models/student_model/student.dart';
import 'package:vdo/repository/student_repository.dart';

class StudentProvider extends ChangeNotifier {
  // repository
  StudentRepository _studentRepository = StudentRepository();

  // constructor
  StudentProvider() {
    isLoading = true;
    _listOfStudents = _studentRepository.getStudentList();

    isLoading = false;
  }

  // list loading
  bool _isLoading = false;
  // getter
  bool get isLoading => _isLoading;

  // setter
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  // list of students
  List<Student> _listOfStudents = [];

  // getter
  List<Student> get listOfStudents => _listOfStudents;

  // add student
  void addStudent(Student student) {
    _listOfStudents.add(student);
    notifyListeners();
  }

  // delete student
  void deleteStudent(Student student) {
    _listOfStudents.remove(student);
    notifyListeners();
  }
}
