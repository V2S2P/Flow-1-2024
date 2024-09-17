class Car{ // The class name, a class is considered to be a complex datatype(because they store multiple pieces of information).
  // The data your class will use
  color c;
  float x;
  float y;
  float xspeed;
  
  Car(float xstart, float ystart, color carCol, float tempXspeed){ // The constructor, this is a special function inside a class that creates the instance of the object you're making.
  // You give the instructions on how to set up the object.
    c = carCol;
    x = xstart;
    y = ystart;
    xspeed = tempXspeed;
  }
  
  void display(float w, float h){ // function with no return value, when it comes to objects we usually call "functions" for "methods"
    rectMode(CENTER);
    fill(c);
    rect(x,y,w,h);
  }
  
  void drive(){ // method with no return value
    x = x + xspeed;
    if(x > width){
      x = 0;
    }
  }
}
