abstract class Rentable {
  rent();
  returnVeichle();
}

enum VehicleType { Commercial, Coupe, Hatchback, Sedan, Sport, SUV, Motorcycle }

class Vehicle implements Rentable {
  String brand;
  String model;
  String type;
  double price;
  Vehicle(
      {required this.brand,
      required this.model,
      required this.type,
      required this.price});

  @override
  rent() {
    print('Vehicle rented : $brand $model \nOriginal price 200Dollar');
  }

  @override
  returnVeichle() {
    print('Vehicle returned $brand');
  }
}

mixin Discountable {
  void calculateDiscountedPrice() {
    if (this is Car) {
      Car priceOfCar = this as Car;
      priceOfCar.price = ((priceOfCar.price * 20) / 100);
      return print("Discounted price $priceOfCar Dollar");
    }
  }
}

class Car extends Vehicle with Discountable {
  int passengerCapacity;

  Car(
      {required super.brand,
      required super.model,
      required super.type,
      required super.price,
      required this.passengerCapacity});
}

main() {
  Car car1 = Car(
      brand: "Chevrolet",
      model: "Camaro",
      type: "Sport",
      price: 200.0,
      passengerCapacity: 4);
  car1.rent();
  car1.calculateDiscountedPrice();
  car1.returnVeichle();
}
