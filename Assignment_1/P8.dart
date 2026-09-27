import 'dart:io';

void main() {
  print("Enter first number:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int b = int.parse(stdin.readLineSync()!);

  print("Before swapping:");
  print("a = $a");
  print("b = $b");

  int temp = a;
  a = b;
  b = temp;

  print("After swapping:");
  print("a = $a");
  print("b = $b");
}