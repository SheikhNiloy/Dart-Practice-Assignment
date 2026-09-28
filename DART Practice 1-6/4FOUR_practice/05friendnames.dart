void main() {
  List<String> friends = [
    "Amin",
    "Rahul",
    "Karim",
    "Arif",
    "Sakib",
    "Nabil",
    "Rafi"
  ];

  List<String> result = friends.where((name) => name.toLowerCase().startsWith("a")).toList();

  print(result);
}
