int globalX = 0;
int globalY = 100;
int speed = 1;

void setup(){
size(400,400);
}

void draw(){
  background(255);
    move();
  bounce();
  
  drawCar(globalX,globalY,64,color(200,200,0));
  drawCar(globalX,300,34,color(255,255,0));
}
