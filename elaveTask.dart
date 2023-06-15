abstract class Product {
  String name;
  int price;
  Product({required this.name, required this.price});

  void showDisplay();
}

class Electronics extends Product {
  String magazineLocation;
  Electronics(
      {required this.magazineLocation,
      required super.price,
      required super.name});
  void showDisplay() {
    print("");
  }
}

class Books extends Product {
  String genre;
  Books({required this.genre, required super.price, required super.name});

  @override
  void showDisplay() {
    print("Kitabin Janri: $genre, Kitabin adi: $name , Qiymeti: $price");
  }
}

class Phone extends Electronics {
  String brand;
  String model;
  Phone(
      {required super.magazineLocation,
      required this.brand,
      required this.model,
      required super.price,
      required super.name});

  @override
  void showDisplay() {
    print(
        "Brandi: $brand , Magaza adi: $name, Magaza unvani: $magazineLocation Model: $model, Qiymet: $price");
  }
}

class Computers extends Electronics {
  String brand;
  String cardType;
  String cpuType;
  Computers(
      {required super.magazineLocation,
      required this.brand,
      required this.cardType,
      required this.cpuType,
      required super.price,
      required super.name});

  @override
  void showDisplay() {
    print(
        "Brandi: $brand , Magaza adi: $name, Magaza unvani: $magazineLocation Videokarta: $cardType,  CPU: $cpuType, Qiymet: $price");
  }
}

main() {
  Phone phone = Phone(
      magazineLocation: "Elmler",
      brand: "Iphone",
      model: "14 Pro Max",
      price: 1500,
      name: "Irshad electronics");

  phone.showDisplay();

  Computers computers = Computers(
      magazineLocation: "Nerimanov",
      brand: "MSI",
      cardType: "Nvidia 4090",
      cpuType: "Intel i9 13900k",
      price: 4500,
      name: "Kontakt Home");
  computers.showDisplay();

  Books books = Books(price: 100, name: "Harry Potter", genre: "Fantastika");
  books.showDisplay();
}
