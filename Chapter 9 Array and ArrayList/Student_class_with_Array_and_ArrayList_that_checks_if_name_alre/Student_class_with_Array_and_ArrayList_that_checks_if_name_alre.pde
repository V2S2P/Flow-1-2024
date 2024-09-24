import java.util.*;
void setup() {
  // Create an array of "Student" objects
  Student[] studentsArray = new Student[10];

  // Names for the "Student" objects in the array
  String[] studentNames = {"Anna", "Benjamin", "Clara", "Daniel", "Emilie", "Frederik", "Gustav",
    "Hannah", "Isabella", "Jonas"};

  // Names of the "Student" objects in the ArrayList
  String[] studentArrayListNames = {"Laura", "Sofie", "William", "Maja", "Sebastian",
    "Victoria", "Noah", "Mathilde", "Lucas", "Jonas", "Bob", "Bob", "Valdemar"};

  // Fil the array with "Student" objects
  for (int i = 0; i < studentsArray.length; i++) {
    studentsArray[i] = new Student(studentNames[i]);
  }

  // Create an ArrayList to hold "Student" objects
  ArrayList<Student> studentList = new ArrayList<>();

  // Add "Student" objects to the ArrayList if the name is not already there
  for (int i = 0; i < studentArrayListNames.length; i++) {
    String nameToAdd = studentArrayListNames[i];

    // Check if the name already exists in the ArrayList
    boolean nameExists = false;
    for (Student student : studentList) {
      if (student.name.equals(nameToAdd)) {
        nameExists = true;
        break;
      }
    }

    // Only add the "Student" object if the name is not already in the list
    if (!nameExists) {
      studentList.add(new Student(nameToAdd));
    }
  }

  // Print names from the Array
  println("Names from the array:");
  for (Student student : studentsArray) {
    student.printName();
  }

  // Print names from the ArrayList
  println("\nNames from the ArrayList:");
  for (Student student : studentList) {
    student.printName();
  }
}
//studentList.add("Laura","Sofie","William","Maja","Sebastian","Victoria","Noah","Mathilde","Lucas");
