Snake[] snakes; //<>//
int numSnakes = 5;

void setup() {
  size(500, 500);
  snakes = new Snake[numSnakes];
  for (int i = 0; i < numSnakes; i++) {
    snakes[i] = new Snake(50);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < numSnakes; i++) {
    snakes[i].update(mouseX, mouseY);
    snakes[i].display(color(255,125,0));
  }
}
