void setup(){
  int result = multiply(2,3); // 2*3 is stored in result
  // and then printed out.
  println(result);
  
  drawRect();
}
// We need the result of the multiplication so we 
// return it and can store the returned value in a 
// variable like "result" above.
int multiply(int x, int y){
  return x*y;
}
// We don't need a return value as drawRect just draws
// a rectanle and it's already predertimined it's 
// parameters.
void drawRect(){
  rect(50,50,50,50);
}
