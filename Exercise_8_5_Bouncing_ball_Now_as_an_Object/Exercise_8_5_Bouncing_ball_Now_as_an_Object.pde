Ball Ball1;
Ball Ball2;

float gravity = 0.1;

void setup(){
  size(500,500);
  smooth();
  
  
  Ball1 = new Ball(50,0,1,0.50,color(255,255,0));
  Ball2 = new Ball(300,0,1,0.1,color(255,150,0));
}

void draw(){
  background(255);
  
  Ball1.display(50,50);
  Ball2.display(100,100);
  
  Ball1.bounce();
  Ball2.bounce();
}
