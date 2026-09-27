double calculateCircleArea(double radius) {
  return 3.1416 * radius * radius;
}

void main() {
  double area = calculateCircleArea(5);

  print("Area of Circle = $area");
}