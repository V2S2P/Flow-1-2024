void setup(){
  multiplication(5); // Calling the function we created, and giving it the value of 5 in parameters
}

void multiplication(int amount){
  for(int i = 1; i <= amount * 10; i++){ // A loop that starts at i = 1 and continues till i = 5*10 //<>//
  // or i = 50. 
    if(i % amount == 0){ // An if statement that checks if i divided by amount leaves 0 left.
      println(i);
    }
  }
}
