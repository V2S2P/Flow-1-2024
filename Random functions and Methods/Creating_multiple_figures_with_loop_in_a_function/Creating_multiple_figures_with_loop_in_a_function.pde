void setup() {
  size(400, 400);
}

void draw() {
  rectangle();
}

void rectangle() {
  fill(127);
  stroke(255);
  strokeWeight(2);

  for (int i = 0; i <= 20; i++) {
    int x = i * 20;
    int y = i * 30;
    rect(x, y, 50, 50);
    for (int j = 0; j <= 20; j++) {
      int z = j * 20;
      int c = j * 10;
      rect(z, c, 50, 50);
    }
  }
}
