float circleX = 0;
float circleY = 0;
float circleW = 50;
float circleH = 50;
float change1 = 100;
int backgroundColor = 255;
float circleFill = 193;
void setup(){
  size(400,400);
  background(backgroundColor);
  smooth();
}

void draw(){
  fill(circleFill);
  ellipseMode(CENTER);
  ellipse(circleX + change1,circleY + change1,circleW,circleH);
  ellipse(circleX + change1*3,circleY + change1,circleW,circleH);
  ellipse(circleX + change1,circleY + change1*3,circleW,circleH);
  ellipse(circleX+change1*3,circleY+change1*3,circleW,circleH);
}
