import java.util.*;
Library library;
void setup() {
  library = new Library();

  Book book1 = new Book("Harry Potter", "J.K. Rowling");
  Book book2 = new Book("The Hobbit", "J.R.R. Tolkien");
  Book book3 = new Book("1984", "George Orwell");

  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  library.listAvailableBooks();

  library.borrowBook("Harry Potter");

  library.listAvailableBooks();

  library.returnBook("Harry Potter");

  library.listAvailableBooks();
}
