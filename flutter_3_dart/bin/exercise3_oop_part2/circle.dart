import 'shape.dart';

class Circle extends Shape {
  double radius;
  static const double pi = 3.14;

  Circle(this.radius);

  @override
  double chuVi() {
    return 2 * radius * pi;
  }

  @override
  double dienTich() {
    return radius * radius * pi;
  }

  @override
  String name() {
    return "Circle";
  }
}
