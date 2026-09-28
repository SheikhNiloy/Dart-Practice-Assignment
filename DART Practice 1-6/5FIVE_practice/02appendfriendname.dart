import 'dart:io';

void main() async {
  File file = File("hello.txt");
  await file.writeAsString("\nAmin", mode: FileMode.append);
  print("Friend name added");
}
