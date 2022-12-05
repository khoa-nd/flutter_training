import 'dart:math';

import 'shape.dart';

class Triangle extends Shape{
  double a, b, c;

  Triangle(this.a, this.b, this.c);

  @override
  double chuVi() {
    return a + b + c;
  }

  @override
  double dienTich() {
    double p = chuVi() / 2;
    return sqrt(p * (p - a) * (p - b) * (p - c));
  }

  @override
  String name() {
    return "Triangle";
  }
}
