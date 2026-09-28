import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("1. Add task");
    print("2. Remove task");
    print("3. View tasks");
    print("4. Exit");

    String choice = stdin.readLineSync()!;

    if (choice == "1") {
      print("Enter task:");
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print("Task added");
    } else if (choice == "2") {
      print("Enter task number:");
      int number = int.parse(stdin.readLineSync()!);

      if (number >= 1 && number <= tasks.length) {
        tasks.removeAt(number - 1);
        print("Task removed");
      } else {
        print("Invalid task number");
      }
    } else if (choice == "3") {
      if (tasks.isEmpty) {
        print("No tasks");
      } else {
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
      }
    } else if (choice == "4") {
      break;
    } else {
      print("Invalid choice");
    }
  }
}
