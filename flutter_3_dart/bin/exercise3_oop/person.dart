class Person {
  final String name;
  final int age;
  final String? email;

  const Person({required this.name, this.age = 0, this.email = ""});

  void showName() {}

  void showAge() {}
}
