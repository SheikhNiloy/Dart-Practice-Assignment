void main() {
  Map<String, String> phone = {
    "John": "123456",
    "Alex": "789012",
    "Sara": "345678",
    "Liam": "901234",
    "Mark": "567890"
  };

  List<String> result =
      phone.keys.where((key) => key.length == 4).toList();

  print(result);
}
