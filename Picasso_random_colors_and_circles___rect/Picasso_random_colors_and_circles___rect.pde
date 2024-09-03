float circleX;
float circleY;
float circleW;
float circleH;
float r;
float g;
float b;
float a;

void setup(){
  size(500,500);
  background(0);
}

void draw(){
  noStroke();
  circleX = random(width);
  circleY = random(height);
  circleW = random(width);
  circleH = random(height);
  
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  
  fill (r,g,b,a);
  ellipse(circleX,circleY,circleW,circleH);
  rect(circleX,circleY,circleW,circleH);
}
