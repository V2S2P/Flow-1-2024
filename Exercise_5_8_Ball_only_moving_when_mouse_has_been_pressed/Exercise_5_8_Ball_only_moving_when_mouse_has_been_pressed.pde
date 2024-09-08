boolean press = false;

int circleX = 0;
int circleY = height/2;

void setup() {
  size(400, 400);
}

void draw() {
  background(100);
  stroke(255);
  fill(175);
  ellipse(circleX, circleY, 50, 50);

  if (press) {
    circleX = circleX + 1;
  } else if (!press) {
  }
}

void mousePressed() {
  press = true;
}
