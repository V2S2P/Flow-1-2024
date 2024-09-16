//int num = 5;

void setup() {
  //int result = findFactorial(num);
  //println("Factorial of " + num + " is: " + result);
  printFactorial(5);
}
/*
int findFactorial(int n) {
  int factorial = 1; //<>//
  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }
  return factorial;
}
*/

// This is how it would look with no return value
void printFactorial(int n){
  int factorial = 1;
  for(int i = 1; i <= n; i++){
    factorial *= i;
  }
  println("Factorial of " + n + " is " + factorial);
}
