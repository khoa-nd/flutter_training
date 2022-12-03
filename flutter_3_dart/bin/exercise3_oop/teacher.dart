import 'Person.dart';

class Teacher extends Person {
  String department;
  String subject;

  Teacher({required super.name, this.department = "", this.subject = ""});

  void teach() {}
}
