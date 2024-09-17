class Ball { // A class is something that has data for our object and the functionality(methods) of it.
  // Data
  float x;
  float y;
  float diameter;
  float xspeed;
  float yspeed;
  boolean popped = false;

  // Constructor
  // The Constructor is the moment the object is born, so when we give it these parameters we tell it to be born
  // with these values from the start.
  Ball(float xstart, float ystart, float speedX, float speedY, float dia) {
    x = xstart;
    y = ystart;
    xspeed = speedX;
    yspeed = speedY;
    diameter = dia;
  }

  // Method for displaying the ball, its width, height and color
  void displayBall(float diameter, color c) {
    stroke(0);
    if (popped) { // If the ball has popped, change to black. So since popped is default set to false, this wont happen
      // unless you click.
      fill(0);
    } else {
      fill(c);
    }

    ellipse(x, y, diameter, diameter);
  }
  // Method for the speed of the ball, both on the x-axis and y-axis
  void speed() {
    println(xspeed);
    x = x + xspeed;
    y = y + yspeed;
  }
  // Method for checking when the balls hit the edges, if they hit either the left or right edge they will bounce
  // back, and if they hit either the top or bottom they will also bounce back.
  void checkEdges() {
    if (x > width || x < 0) {
      xspeed = xspeed * -1;
    }
    if (y > height || y < 0) {
      yspeed = yspeed * -1;
    }
  }
  void ballPop() {
    popped = true; // Set the popped state to true when clocked.
  }
  void bounceOffEach() {
    float d = dist(b.x, b.y, b2.x, b2.y);
    if (d < b.diameter/2 + b2.diameter/2) {
      background(0, 255, 0);
      xspeed = xspeed * -1;
      yspeed = yspeed * -1;
    }
  }
}

