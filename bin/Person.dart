class Person {
  String name;
  String address;
  Person(String name, String address) {
    this.name = name;
    this.address = address;
  }

  void set setName(String name) {
    this.name = name;
  }

  void set setAddress(String address) {
    this.address = address;
  }

  String get getName {
    return name;
  }

  String get getAddress {
    return address;
  }

  @override
  String toString() {
    return 'Name: $name , Address: $address';
  }
}

class Student extends Person {
  String program;
  int year;
  double fee;
  Student(String name, String address, String program, int year, double fee)
      : super(name, address) {
    this.program = program;
    this.year = year;
    this.fee = fee;
  }
  void set setProgram(String program) {
    this.program = program;
  }

  String get getProgram {
    return program;
  }

  void set setYear(int year) {
    this.year = year;
  }

  int get getYear {
    return year;
  }

  void set setFee(double fee) {
    this.fee = fee;
  }

  double get getFee {
    return fee;
  }

  String toString() {
    return 'Name: $name , Address: $address , Program: $program , Year: $year , Fee: $fee';
  }
}
