
//numberOfRows er hvor mange rows vi vil have
for (int numberOfRows = 10; numberOfRows > 0; numberOfRows--){
  //space er hvor mange mellemrum der skal være før en star kommer
  for (int space = 10; space > numberOfRows; space--){
    print(" ");
  }
  //star er hvor mange stars der skal printes
  for (int star = 1; star <= numberOfRows; star++){
    print("*");
  }
  println();
}
