class Rectangle {
  int length, width;

  Rectangle(this.length, this.width);

  int chuVi() {
    return (length + width) * 2;
  }

  int dienTich() {
    return length * width; 
  }
}
