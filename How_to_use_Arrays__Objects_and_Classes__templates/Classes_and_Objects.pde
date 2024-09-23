/* 1. Creating and initializing Objects from Classes
Example class: Person
class Person{
  Instance variables/fields/data
  String name;
  int age;
  
  Constructor to intialize a Person object
  Person(String name, int age){
    this.name = name;
    this.age = age;
  }
  
  Method to display the person's information
  void displayInfo(){
    println("Name: " + name + ", Age: " + age
  }
}

void setup(){
  Declaring a Person object and initializing it using the constructor
  Person person1 = new Person("Alice", 30); "Alice" and "30" are values we assign to the fields "name" and "age" from our "person" class
  
  Accessing the object's method
  person1.displayInfo();
}
*/
