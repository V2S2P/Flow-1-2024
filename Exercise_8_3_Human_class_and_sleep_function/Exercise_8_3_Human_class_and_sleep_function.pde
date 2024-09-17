class Human{
  color hairColor;
  float height;
  
  Human(){
    hairColor = 255;
    height = 180;
  }
  
  void sleep(){
    println("A human spends 1/3rd of their life sleeping " + hairColor);
  }
  
  void sizeHuman(){
    println("This human is " + height + " cm tall");
  }
}
