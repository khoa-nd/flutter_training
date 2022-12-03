import 'Person.dart';

class Student extends Person {
  int grade;
  String className;
  int mark;

  Student(
      {required super.name,
      this.grade = 0,
      this.className = "",
      this.mark = 0});

  void showMarkPoint() {}
}
