class Bubble {
  float x, y, diameter, yspeed;

  Bubble(float diameter) {
    x = random(width);
    y = height;
    this.diameter = diameter;
    yspeed = random(0.5, 2.5);
  }

  void ascend() {
    y = y - yspeed;
    x = x + random(-2, 2);
  }

  void top() {
    if (y < -50) {
      y = height+50;
    }
  }

  void display() {
    stroke(0);
    //fill(127,100);
    ellipse(x, y, diameter, diameter);
  }
}
