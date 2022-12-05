import 'rectangle.dart';

void main(List<String> arguments) {
  final listShape = [
    Rectangle(4, 5),
    Rectangle(6, 5),
    Rectangle(7, 5),
    Rectangle(8, 5),
    Rectangle(3, 5),
    Rectangle(2, 5),
    Rectangle(1, 5)
  ];

  List max = timHinhCoChuViDienTichLonNhat(listShape);
  print("Chu vi lon nhat ${max[0]}. Dien tich lon nhat ${max[1]}");

  List min = timHinhCoChuViDienTichNhoNhat(listShape);
  print("Chu vi nho nhat ${min[0]}. Dien tich nho nhat ${min[1]}");
}

List timHinhCoChuViDienTichLonNhat(List listShape) {
  int maxChuVi = 0;
  int maxDienTich = 0;
  for(Rectangle rec in listShape) {
    if (rec.chuVi() > maxChuVi) {
      maxChuVi = rec.chuVi();
    }
    if (rec.dienTich() > maxDienTich) {
      maxDienTich = rec.dienTich();
    }
  }
  return [maxChuVi, maxDienTich];
}

List timHinhCoChuViDienTichNhoNhat(List listShape) {
  int minChuVi = double.maxFinite.toInt();
  int minDienTich = double.maxFinite.toInt();
  for(Rectangle rec in listShape) {
    if (rec.chuVi() < minChuVi) {
      minChuVi = rec.chuVi();
    }
    if (rec.dienTich() < minDienTich) {
      minDienTich = rec.dienTich();
    }
  }
  return [minChuVi, minDienTich];
}
