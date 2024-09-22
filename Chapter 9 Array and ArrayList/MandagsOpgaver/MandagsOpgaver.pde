class Person {
  String name;
  int age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void increaseAge() {
    age = age + 1;
  }

  void printInfo() {
    println(name + " is " + age + " years old");
  }

  void increaseAllAges() {
    for (int i = 0; i < persons.length; i++) {
      persons[i].increaseAge();
    }
    println("----------");
  }

  void printAll() {
    for (int i = 0; i < persons.length; i++) {
      persons[i].printInfo();
    }
  }

  float avgAge() {
    float totalAge = 0;
    for (int i = 0; i < persons.length; i++) {
      totalAge += persons[i].age;
    }
    return totalAge/persons.length;
  }

  String getName() {
    println(name);
    return name;
  }
  int getAge() {
    println(age);
    return age;
  }
}
