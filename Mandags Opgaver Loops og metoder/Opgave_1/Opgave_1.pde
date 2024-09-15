public void printEven(int maxNumber){
  /*for(int i = 0; i <= maxNumber; i = i + 2){
    println(i);
  }
  */
  int i = 0;
  while(i <= maxNumber){
    println(i);
    i = i + 2;
  }
  if(maxNumber < 0){
    println("Please enter only positive numbers");
  }
}
