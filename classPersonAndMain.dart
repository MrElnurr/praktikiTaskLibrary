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
  List<Employee> team;
  Manager(
      {required this.team,
      required super.position,
      required super.name,
      required super.email});

  void addToTeam(Employee employee) {
    team.add(employee);
  }

  void printTeam() {
    print("Team Members:");
    for (Employee employee in team) {
      print(
          "Name: ${employee.name}, Position: ${employee.position}, Email: ${employee.email}");
    }
  }
}


import 'person.dart';

void main() {
  Manager manager = Manager(
      team: [],
      position: "Manager Position",
      name: "Manager Name",
      email: "manager@gmail.com");

  Employee employee = Employee(
      position: "Employee 1",
      name: "Employee 1",
      email: "employee1@gmail.com");
  manager.addToTeam(employee);
  manager.printTeam();
}
