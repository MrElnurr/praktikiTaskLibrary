class FoodItem {
  String name;
  double price;
  FoodItem(this.name, this.price);
}
class OrderingSystem<T extends FoodItem> {
  List<T> order = [];
  void addItem(T item) {
    order.add(item);
  }
  void removeItem(T item) {
    order.remove(item);
  }
  double calculateTotalCost() {
    double totalCost = 0;
    for (var item in order) {
      totalCost += item.price;
    }
    return totalCost;
  }
}
class Appetizer extends FoodItem {
  String description;
  Appetizer(this.description, super.name, super.price);
  void printDescription() {
    print("$name - Price: $price manat,  Descripction: $description");
  }
}
class MainCourse extends FoodItem {
  String ingredients;

  MainCourse(this.ingredients, super.name, super.price);
  void printIngridents() {
    print("$name - Price: $price manat - Ingridents : $ingredients");
  }
}
class Dessert extends FoodItem {
  bool isSweet;
  Dessert(this.isSweet, super.name, super.price);
  void printSweetness() {
    String sweetness = isSweet ? 'Sweet' : 'Not Sweet';
    print("$name - Price: $price manat, looks soo $sweetness");
  }
}
void main(List<String> args) {
  Appetizer order1 = Appetizer("idk", "Smoked Salmon", 15.0);
  MainCourse order2 = MainCourse("4 small radishes, thinly sliced and etc.",
      "Red Snapper with Citrus", 35.3);
  Dessert order3 = Dessert(true, "Paxlava", 999.99);
  OrderingSystem orderingSystem = OrderingSystem();
  order1.printDescription();
  order2.printIngridents();
  order3.printSweetness();
  orderingSystem.addItem(order1);
  orderingSystem.addItem(order2);
  orderingSystem.addItem(order3);
  orderingSystem.calculateTotalCost();
  var total = orderingSystem.calculateTotalCost();
  print("Total cost of order: $total manat");
}
