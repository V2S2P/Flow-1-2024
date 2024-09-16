void setup(){
  fibo(10);
}

void fibo(int fibLen){
  int a = 0; //<>//
  int b = 1;
  
  for(int i = 0; i < fibLen; i++){
    int fib = a + b;
    a = b;
    b = fib;
    println(fib);
  }
}
