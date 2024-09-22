Person[] persons = new Person[10];

void setup() {

  /*Person p0 = new Person("Valdemar", 23);
   Person p1 = new Person("Hank", 34);
   
   println(p0.name, p0.age + "\n" + p1.name, p1.age);
   
   p0.getName();
   p0.getAge(); // 23
   p0.increaseAge(); // 23 + 1
   p0.getAge(); // 24
   */

  for (int i = 0; i < persons.length; i++) {
    persons[i] = new Person("Person " + (i+1), 20 + i);
  }
  printAll();
  println("Average Age: " + avgAge());
  increaseAllAges();
  printAll();
  println("Average age after increasing: " + avgAge());
}

void increaseAllAges() {
  for (int i = 0; i < persons.length; i++) {
    persons[i].increaseAge();
  }
  println("-------");
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
