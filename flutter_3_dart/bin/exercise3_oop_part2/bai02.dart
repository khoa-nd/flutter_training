import 'circle.dart';
import 'rectangle.dart';
import 'shape.dart';
import 'square.dart';
import 'triangle.dart';

void main(List<String> arguments) {
  final listShape = [Rectangle(3, 8), Circle(6), Triangle(3, 4, 5), Square(4)];

  Shape? maxDienTichShape = timHinhCoDienTichLonNhat(listShape);
  print("Hinh co dien tich lon nhat la ${maxDienTichShape?.name()}:${maxDienTichShape?.dienTich()}");

  Shape? minDienTichShape = timHinhCoDienTichNhoNhat(listShape);
  print("Hinh co dien tich nho nhat la ${minDienTichShape?.name()}:${minDienTichShape?.dienTich()}");
}

Shape? timHinhCoDienTichLonNhat(List listShape) {
  double maxDienTich = 0;
  Shape? maxDienTichShape;
  for (Shape shape in listShape) {
    if (shape.dienTich() > maxDienTich) {
      maxDienTich = shape.dienTich();
      maxDienTichShape = shape;
    }
  }
  return maxDienTichShape;
}

Shape? timHinhCoDienTichNhoNhat(List listShape) {
  double minDienTich = double.maxFinite;
  Shape? minDienTichShape;
  for (Shape shape in listShape) {
    if (shape.dienTich() < minDienTich) {
      minDienTich = shape.dienTich();
      minDienTichShape = shape;
    }
  }
  return minDienTichShape;
}
