import 'dart:io';

void main() {
  print("Enter distance in km:");
  double distance = double.parse(stdin.readLineSync()!);

  print("Enter speed in km/h:");
  double speed = double.parse(stdin.readLineSync()!);

  double timeInHours = distance / speed;
  double timeInMinutes = timeInHours * 60;

  print("Time = $timeInMinutes minutes");
}
