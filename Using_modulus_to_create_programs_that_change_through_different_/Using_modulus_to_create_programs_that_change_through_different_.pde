int timer = 0;
int figureState = 0;

int x = 0;
float speed = 1;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  timer++;
  if (timer % 150 == 0) {
    figureState = (figureState + 1) % 4;
  }
  switch(figureState) {
  case 0:
    background(255);
    strokeWeight(10);
    line(0, 0, 360, 450);
    break;
  case 1:
    background(255);
    ellipse(width/2, height/2, 100, 100);
    break;
  case 2:
    background(255);
    rect(width/2, height/2, 150, 150);
    break;
  case 3:
    background(255);
    for (int i = 0; i <= 20; i++) {
      ellipse(x, width/2, 20, 20);
      ellipse(random(x, 255), random(x, 255), random(255), random(255));
    }
    x = x + (int)speed;
    break;
  }
}
