void main(List<String> arguments) {
  List<String> flutter3 = ["Khoa", "Lam", "Anh"];
  print(flutter3);

  List<int> ageOfMembers = [30, 25, 37];
  List ageOfMembersString = ageOfMembers.map((e) => e.toString()).toList();
  print(ageOfMembersString);

  Map info = {
    "name": "Khoa",
    "age": 33,
    "dob": 1989,
    "gender": "male",
    "hobbies": ["Code", "Eat", "Sleep"]
  };

  print(info);

  info["dob"] = 2000;
  info["hobbies"] = ["Code", "Eat", "Sleep", "Play"];
  print(info);
}