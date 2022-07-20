class Student {
  int rollNo;
  String name;
  String studentClass;
  int age;
  String? gender;
  String? email;

  Student(
      {required this.rollNo,
      required this.name,
      required this.studentClass,
      required this.age,
      required this.gender,
      required this.email});

  Student.fromJson(Map<String, dynamic> json)
      : rollNo = json['rollno'],
        name = json['name'],
        studentClass = json['class'],
        age = json['age'],
        gender = json['gender'],
        email = json['email'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rollno'] = this.rollNo;
    data['name'] = this.name;
    data['class'] = this.studentClass;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['email'] = this.email;
    return data;
  }
}
