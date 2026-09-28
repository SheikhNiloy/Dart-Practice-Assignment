class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void showDetails() {
    print("ID: $id, Name: $name, Price: $price");
  }
}

void main() {
  List<House> houses = [];

  houses.add(House(1, "House A", 500000));
  houses.add(House(2, "House B", 700000));
  houses.add(House(3, "House C", 900000));

  for (House house in houses) {
    house.showDetails();
  }
}
