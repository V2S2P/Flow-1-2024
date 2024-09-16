void setup(){
  String name = getName();
  println(name);
  
  float area = calculateArea(5.0,5.0);
  println(area);

  int getNum = getNumber(10);
  println(getNum);
}

String getName(){
  return "Peter";
}

float calculateArea(float h, double w){
  return h*(float)w;
}

int getNumber(int max){
  if(max < 10){
    return 4;
  }
  return 200;
}
