import java.util.*;
class Library {
  // Attributes/Instance variables
  ArrayList<Book> books = new ArrayList<Book>(); // An ArrayList that stores all the "Book" objects in the library. We use ArrayList
  // because it is dynamic and we can add/remove books easily.

  void addBook(Book book) { // Method to add a "Book" object to the "books" list. It prints a message to indicate that the book has been
    // added to the library.
    books.add(book);
    println("Adding '" + book.title + "' by " + book.author + " to the library");
  }

  void listAvailableBooks() { // Method that iterates over the "books" list and prints out the title and the author of each available
    // book (where isAvailable == true).
    println("Available books:");
    for (int i = 0; i < books.size(); i++) {
      Book book = books.get(i);
      if (book.isAvailable) {
        println("- " + book.title + " by " + book.author);
      }
    }
  }

  void borrowBook(String title) { // Method that loops through the "books" list, finds the book with the matching title, and calls its
    // borrowedBoop() method if available.
    for (int i = 0; i < books.size(); i++) {
      Book book = books.get(i);
      if (book.title.equals(title)) {
        book.borrowBook();
        return;
      }
    }
    println("Book titled '" + title + "' not found inthe library"); // If the book is not found, it will print a message to tell user
    // that the book wasn't found in the library.
  }

  void returnBook(String title) { // Method that loops through the list of books to find a book by its title. Once found, it calls its
    // returnBook() method to mark it as returned.
    for (int i = 0; i < books.size(); i++) {
      Book book = books.get(i);
      if (book.title.equals(title)) {
        book.returnBook();
        return;
      }
    }
    println("Book titles '" + title + "' has been returned"); // If the book is not found, it prints a message to let user know.
  }
}
