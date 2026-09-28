import 'dart:io';

void main() {
  print("Enter number of expenses:");
  int n = int.parse(stdin.readLineSync()!);

  double total = 0;

  for (int i = 1; i <= n; i++) {
    print("Enter expense $i:");
    double expense = double.parse(stdin.readLineSync()!);
    total += expense;
  }

  print("Total = $total");
}
