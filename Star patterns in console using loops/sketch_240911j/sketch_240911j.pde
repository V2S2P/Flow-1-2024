/*
for (int i = 5; i > 0; i--){
  for (int j = 1; j <= i; j++){
    print("* ");
  }
  println();
}
*/
int i = 5; // i = 5 means that j will run 5 times and thus create //<>// //<>//
// 5 stars to start
while (i > 0) {
  int j = 1;
  while (j <= i) {
    print("*");
    j++;
  }
  println();
  i--;
}
