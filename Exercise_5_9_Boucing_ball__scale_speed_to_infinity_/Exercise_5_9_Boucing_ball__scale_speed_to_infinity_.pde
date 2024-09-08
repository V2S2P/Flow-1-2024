int x = 0;
int y = 0;
float speed = 1;
float bounceSpeed = -1.1;
float col;

void setup(){
  size(400,400);
}

void draw(){
  background(50);
  rectMode(CENTER);
  rect(x,width/2,50,50);
  
  x = x + (int)speed;
  //y = y + (int)speed;
  
  if(x > width || x < 0){
    speed = speed * bounceSpeed;
    fill(color(random(255), random(255), color(255)));
  }
  println(speed);
  x = constrain(x,0,width);
}
 
