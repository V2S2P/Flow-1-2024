void setup(){
  star(10);
}

void star(int rows){
  for(int i = 1; i <= rows; i++){
    for(int j = 1; j <= i; j++){
      print("*");
    }
    println();
  }
}
