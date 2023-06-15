class Product {
  String name;
  Product({required this.name});

  void showDisplay() {
    print("");
  }
}

class Electronics extends Product {
  int price;
  Electronics({required this.price, required super.name});
}

class Books extends Product {
  int price;
  Books({required this.price, required super.name});

  @override
  void showDisplay() {
    print("Kitabin adi: $name , Qiymeti: $price");
  }
}

class Phone extends Electronics {
  String brand;
  String model;
  Phone(
      {required this.brand,
      required this.model,
      required super.price,
      required super.name});

  @override
  void showDisplay() {
    print("Brandi: $brand , Magaza adi: $name, Model: $model, Qiymet: $price");
  }
}

class Computers extends Electronics {
  String brand;
  String cardType;
  String cpuType;
  Computers(
      {required this.brand,
      required this.cardType,
      required this.cpuType,
      required super.price,
      required super.name});

  @override
  void showDisplay() {
    print(
        "Brandi: $brand , Magaza adi: $name, Videokarta: $cardType,  CPU: $cpuType, Qiymet: $price");
  }
}

main() {
  Phone phone = Phone(
      brand: "Iphone",
      model: "14 Pro Max",
      price: 1500,
      name: "Irshad electronics");
  phone.showDisplay();

  Computers computers = Computers(
      brand: "MSI",
      cardType: "Nvidia 4090",
      cpuType: "Intel i9 13900k",
      price: 4500,
      name: "Kontakt Home");
  computers.showDisplay();

  Books books = Books(price: 100, name: "Harry Potter");
  books.showDisplay();
}
