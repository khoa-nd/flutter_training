import 'shape.dart';

class Rectangle extends Shape{
  double length, width;

  Rectangle(this.length, this.width);

  @override
  double chuVi() {
    return (length + width) * 2;
  }

  @override
  double dienTich() {
    return length * width * 1.0; 
  }

  @override
  String name() {
    return "Rectangle";
  }
}
