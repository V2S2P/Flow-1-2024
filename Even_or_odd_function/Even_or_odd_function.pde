void setup(){
  evenOrOdd(-2);
}

void evenOrOdd(int number){
  if(number % 2 == 0){
    println(number + " is even");
  }else if(number % 2 != 0){
    println(number + " is uneven");
  }
}
