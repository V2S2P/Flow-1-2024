void setup() {
  Library library = new Library(4, 5);

  library.reserveBook(2, 3);
  library.printLibrary();
}

class Library {
  char[][] rowsAndGenres;

  Library(int rows, int books) {
    rowsAndGenres = new char[rows][books];
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < books; j++) {
        rowsAndGenres[i][j] = 'A';
      }
    }
  }


  void printLibrary() {
    String[] genres = {"Fantasy", "Sci-Fi", "Romance", "Historical"};
    for (int i = 0; i < rowsAndGenres.length; i++) {
      print("Genre " + genres[i] + ": ");
      for (int j = 0; j < rowsAndGenres[i].length; j++) {
        print(rowsAndGenres[i][j] + " ");
      }
      println();
    }
  }

  void reserveBook(int row, int book) {
    int originalRow = row;
    int originalBook = book;
    row--;
    book--;

    if (row >= 0 && row < rowsAndGenres.length && book >= 0 && book < rowsAndGenres[row].length) {
      if (rowsAndGenres[row][book] == 'A') {
        rowsAndGenres[row][book] = 'R';
        println("\nReserve book " + originalBook + ", row " + originalRow);
      } else {
        println("This book is already reserved");
      }
    } else {
      println();
      println("Invalid book or row number!");
    }
  }
}
