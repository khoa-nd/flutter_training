import 'shape.dart';

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double chuVi() {
    return side * 4;
  }

  @override
  double dienTich() {
    return side * side;
  }

  @override
  String name() {
    return "Square";
  }
}
