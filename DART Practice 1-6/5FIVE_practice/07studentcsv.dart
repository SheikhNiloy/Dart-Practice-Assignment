import 'dart:io';

void main() async {
  File file = File("students.csv");

  await file.writeAsString(
    "Name,Age,Address\nSheikh,20,Sylhet\nAmin,21,Dhaka\nKarim,22,Chittagong"
  );

  String data = await file.readAsString();
  print(data);
}
