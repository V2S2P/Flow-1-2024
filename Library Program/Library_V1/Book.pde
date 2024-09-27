import java.util.*;
class Book {
  // Instance variables/ Attributes.
  String title; // Store the title of the book
  String author; // Store the authors name
  boolean isAvailable; // Whether the book is available to be borrowed (true) or not (false). Initialized as true when the book is created

  Book(String title, String author) { // Constructor that initializes the Book object with a title and author. The isAvailable attribute
    // is initialized to true because the book is available by default.
    this.title = title;
    this.author = author;
    this.isAvailable = true;
  }

  void borrowBook() { // Method that checks if the book is available, if it is, it marks the book as borrowed (isAvailable = false)
    // and prints a message to indicate that. Otherwise it prints a message to let the user know the book is already borrowed by someone.
    if (isAvailable) {
      isAvailable = false;
      println(title + " has been borrowed");
    } else {
      println(title + "has already been borrowed");
    }
  }

  void returnBook() { // Method that sets isAvailable to true and prints a message to indicate that the book has been returned and is
    // now available to be borrowed again (isAvailable = true from false).
    isAvailable = true;
    println(title + " has been returned");
  }
}
