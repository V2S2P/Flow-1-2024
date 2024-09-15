int square(int number){
  // A reason to return the result of number * number is so we can store it in a variable
  // and use it for further calculations if we wanted, as seen in this program.
  return number * number;
}

void setup(){
  // Here we store the result of the functions calculations in a variable. When we insert
  // 2 into our function square, we tell it to add 2 and 2 together and store the result of that
  // into our variable result.
  // This is called assigning the returned value from our function to our variable "result"
  int result = square(4);
  println(result);
  
  // Because we have used a return value in our square function, we can use it to calculate
  // and show us the doubled value of our square function.
  int doubleValue = result * 2;
  println(doubleValue);
}
