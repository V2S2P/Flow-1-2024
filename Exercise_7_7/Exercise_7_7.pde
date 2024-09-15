void setup(){
  println("a");
  function1();
  println("b");
}

void draw(){
  println("c");
  function2();
  println("d");
  function1();
  noLoop();
}

/*
a
e
f
b
c
g
e
f
h
d
e
f
*/
