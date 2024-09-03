float circleX;
float circleY;
float circleW = 50;
float circleH = 50;

void setup(){
  size(200,200);
  circleX = width/2;
  circleY = height/2;
}

void draw(){
  background(255);
  noStroke();
  fill(0);
  ellipse(circleX,circleY,circleW,circleH);
  circleX = circleX + random(-2,2);
  circleH = circleH + random(-2,2);
  println(circleX);
}
