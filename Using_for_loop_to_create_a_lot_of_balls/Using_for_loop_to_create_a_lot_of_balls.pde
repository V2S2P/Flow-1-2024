float x = 0;

void setup(){
  size(400,400);
}

void draw(){
  background(0);
  
  for(x = 0; x < 10; x++){
    frameRate(0);
    ellipse(random(width),random(height),16,16);
  }
  println(x);
  
}
