void main(List<String> arguments) {
  String str = " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...";
  str = str.trimLeft();
  str = str.replaceFirst("đ", "Đ");
  str = str.replaceFirst("dart", "Dart");
  str = str.replaceFirst("dart basics", "DART BASIC");
  str = str.replaceFirst("...", "");
  print(str);
}