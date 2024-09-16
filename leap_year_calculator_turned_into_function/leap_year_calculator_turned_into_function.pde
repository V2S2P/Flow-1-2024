void setup() {
  leapYear(1600);
}

void leapYear(int year) {
  if ((year % 400 == 0)) { // first the program checks if the year is divisible by 400, if it is //<>//
  // the program will print that it is a leap year and stop checking further conditions.
    println(year + " is a leap year");
  } else if (year % 100 == 0) { // if the year is not divisible by 400, but it is by 100, it will
  // print out that it is not a leap year.
    println(year + " is not a leap year");
  } else if ((year % 4 == 0)) { // if the year is neither divisible by 400 or 100, but it is by 4
  // it will print that it is a leap year
    println(year + " is a leap year");
  }else{ // else it is not a leap year
    println(year + " is not a leap year");
  }
}
//This logic follows the leap year rule: 
//years divisible by 100 are leap years only if they are also divisible by 400.
