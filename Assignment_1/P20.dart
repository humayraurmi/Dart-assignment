import 'dart:io';

void main() {
  print("Enter first number:");
  double a = double.parse(stdin.readLineSync()!);

  print("Enter operator (+, -, *, /):");
  String operator = stdin.readLineSync()!;

  print("Enter second number:");
  double b = double.parse(stdin.readLineSync()!);

  double result;

  switch (operator) {
    case '+':
      result = a + b;
      break;

    case '-':
      result = a - b;
      break;

    case '*':
      result = a * b;
      break;

    case '/':
      if (b != 0) {
        result = a / b;
      } else {
        print("Cannot divide by zero.");
        return;
      }
      break;

    default:
      print("Invalid operator.");
      return;
  }

  print("Result = $result");
}