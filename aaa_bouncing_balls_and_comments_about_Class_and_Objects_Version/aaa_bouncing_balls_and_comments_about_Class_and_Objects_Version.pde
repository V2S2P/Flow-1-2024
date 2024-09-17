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
  boolean bounceOffEach(Ball... others) { // Ball... others means that the method can take any number of Ball objects when called.
    // The "..." syntax is called varags and allows passing multiple arguments into the method, treating them as an array internally.
    // This way we can pass b,b2,b3,b4 etc, and they will be treated as a collections of balls to check for collision.
    //float d = dist(b.x, b.y, b2.x, b2.y);
    for (Ball other : others) { // This loop iterated over each Ball object in the others collection (which includes b,b2,b3,b4 and so on).
      // It examines each ball one by one, calling each Ball object "other" inside the loop.
      if (other != this) { // This line checks that the "other" ball isn't the same ball as "this". We don't want a ball to compare itself with itself for collision.
        // If the "other" ball is different, it proceeds to check for collision.
        float d = dist(x, y, other.x, other.y); // This calculates the distance (d) between the current ball's position(x,y)
        // and the other balls position(other.x,other.y) using Processing's built-in "dist" function. The "dist" function returns the straight-line
        // distance between two points, so it is very useful for checking if two balls are close enough to collide.
        if (d < (diameter/2 + other.diameter/2)) { // This checks if the distance (d) between the two balls is less than the sum of their radii
          // the radii being diameter/2 for both balls. If the distance is less than this sum, it means the two balls are overlapping or "colliding".
          background(0, 255, 0); // If collision is detected it changes background to green
          // the ball's xspeed and yspeed are reversed to simulate a bounce
          xspeed = xspeed * -1;
          yspeed = yspeed * -1;
          return true; // The method returns true to signal that a collision has happened.
        }
      }
    }
    return false; // If no collisions are detected after checking all the "other" balls, the method returns false to indicate no collisions.
  }
}
