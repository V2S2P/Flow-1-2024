int circleX = 0;
int circleY = 0;

void setup(){
  size(400,400);
}

void draw(){
  background(255);
  stroke(255);
  fill(0);
  ellipse(mouseX,mouseY,circleX,circleY);
  circleX += 1;
  circleY += 1;
}
void mousePressed(){
  circleX -= 10;
  circleY -= 10;
}
