int i; //number of rows
int j; //spaces
int k; //stars
for (i = 5; i > 0; i--){
  for (j = 5; j > i; j--){
    print(" ");
  }
  for(k = 1; k <= i ; k++){
  print("*");
  }
  println();
}
