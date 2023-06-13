abstract class Person {
  String name;
  String email;
  Person({required this.name, required this.email});
}

class Employee extends Person {
  String position;
  Employee({required this.position, required super.name, required super.email});
}

class Manager extends Employee {
  String team;
  Manager(
      {required this.team,
      required super.position,
      required super.name,
      required super.email});

  addToTeam() {
    print("$name adli ishci $team komandasina add olundu");
  }
}

import 'person.dart';

void main() {
  Employee employee =
      Employee(position: "IT", name: "Elnur", email: "elnurkerimov@mail.ru");
  print("${employee.position} , ${employee.name}, ${employee.email}");
  Manager addWorker =
      Manager(team: "A", position: "IT", name: "Eldar", email: "eldar@mail.ru");
  print(addWorker.addToTeam());
}
