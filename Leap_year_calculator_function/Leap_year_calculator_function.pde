void setup() {
  isLeapYear(2025);
  
  /*for (year = 2024; year <= 2524; year++) {
    if (isLeapYear(year)) {
      println(year + " is a leap year");
    } else {
      println(year + " is not a leap year");
    }
  }
}
*/
}

boolean isLeapYear(int year /*Parameter is year of type int, the same as above*/){
      if (year % 4 == 0) { // If the year is divisible by 4 it will go to the next if-statment
        if (year % 100 == 0) { /* It checks here if the year is divisible by 100, if it is then
         it will check in the next line if it is also divisible by 400*/
          if (year % 400 == 0) { 
            println(year + " is a leap year");/* A leap year must not be divisible by 100 unless it is also
           divisible by 400, which is what this if statement checks.
           If the year is divisible by 100 and 400, it is a leap year so the function returns
           true, else it will return false*/
            return true; // Divisible by 400
          } else {
            return false; // Divisible by 100 but not by 400
          }
          /* This is the next condition that checks if the year is divisible by 4 but not 100
           it will return true if so*/
        } else {
          println(year + " is a leap year");
          return true; // Divisible by 4 but not by 100
        }
        /* This code block checks if the year is divisible by 4, if it is not then it will
         return false */
      } else {
        println(year + " is not a leap year");
        return false; // Not divisible by 4
      }
    }
