int calculatePower(int base, int exponent) {
  int result = 1;

  for (int i = 1; i <= exponent; i++) {
    result = result * base;
  }

  return result;
}

void main() {
  print("Result: ${calculatePower(5, 3)}");
}