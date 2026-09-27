import 'dart:io';

void main() {
  print("Enter number of expenses:");
  int n = int.parse(stdin.readLineSync()!);

  List<double> expenses = [];

  for (int i = 1; i <= n; i++) {
    print("Enter expense $i:");
    double amount = double.parse(stdin.readLineSync()!);

    expenses.add(amount);
  }

  double total = 0;

  for (double expense in expenses) {
    total = total + expense;
  }

  print("Total Expense = $total");
}