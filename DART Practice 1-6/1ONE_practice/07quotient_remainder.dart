import 'dart:io';

void main() {
  print("Enter first integer:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second integer:");
  int b = int.parse(stdin.readLineSync()!);

  print("Quotient = ${a ~/ b}");
  print("Remainder = ${a % b}");
}
