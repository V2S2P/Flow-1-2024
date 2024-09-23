void setup(){
  Theater theater = new Theater(10,10);
  //theater.printTheater();
  //println("\nReserve seat on row 1, seat 3");
  theater.reserveSeat(1,6);
  theater.reserveSeat(5,8);
  theater.reserveSeat(11,10);
  theater.printTheater();
}

class Theater {
  char[][] rowsAndSeats;

  Theater(int rows, int seatsPerRow){ // The constructor, rows specifies the number of rows, and seatsPerRow is the number of seats
  // per row.
    rowsAndSeats = new char[rows][seatsPerRow]; // We create a 2D array where each row is an array of seats.
    for(int i = 0; i < rows; i++){ // A nested loop where the outer "i" loop controlls the rows and the inner "j" loop controls each
    // seat in a row.
      for(int j = 0; j < seatsPerRow; j++){
        rowsAndSeats[i][j] = 'O';
      }
    }
  }
  
  void printTheater() {
    for (int i = 0; i < rowsAndSeats.length; i++) { // rowsAndSeats.length gives us the number of rows in the 2D array.
    print("Row " + (i + 1) + ": "); // i + 1 is because the arrays in Java are zero-indexed, we add 1 when printing the row number to
    // display it starting from 1 for the user.
      for (int j = 0; j < rowsAndSeats[i].length; j++){ // rowsAndSeats[i].length gives us the number of seats in each row
        print(rowsAndSeats[i][j] + " "); // we use print here to print the values on the same line, and then println moves to the next
        // line after printing each row.
      }
      println();
    }
  }
  
  void reserveSeat(int row, int seat){
    int originalRow = row;
    int originalSeat = seat;
    row--; // We use row-- and seat-- to subtract 1 to convert the user input(starting from 1) to zero-based indexing for array.
    seat--;
    if(row >= 0 && row < rowsAndSeats.length && seat >= 0 && seat < rowsAndSeats[row].length){ // Before we reserve a seat, we check
    // if the "row" and "seat" are valid (withing the bounds of the array), If the row or seat is out of bounds we print error msg.
      if(rowsAndSeats[row][seat] == 'O'){ // If the seat is available ('O'), it is changed to 'x'. 
        rowsAndSeats[row][seat] = 'x';
        println("\nReserve seat " + originalSeat + ", row " + originalRow);
      }else{
        println("This seat is already reserved"); //If the seat is already reserved
      // a message is printed to notify that it's been reserved already.
      }
    }else{
      println();
      println("Invalid row or seat number!" + "\nseat " + originalSeat + ", row " + originalRow);
    }
  }
}
