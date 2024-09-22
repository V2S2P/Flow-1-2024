class Button {
  // Instance variables, the stuff that a button class could use
  float x;
  float y;
  float w;
  float h;
  color c;
  boolean on;

  // The button constructor
  Button(float x, float y, float w, float h, color c) {
    // Telling the program which variables we mean when we say this.x we mean the x from our instance variables
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    on = false;
  }

  // A method to display the rectangles/buttons
  void display() {
    noStroke();
    // An if statement that checks if the boolean variable on is on, and if it is on then fill the buttons with
    // the color variable c. If "on" is false we just have the buttons be white
    if (on) {
      fill(c);
    } else {
      fill(255);
    }
    // Creating the rectangle to be our buttons, we just our variables x,y,w,h so the program is scalable
    rectMode(CENTER);
    rect(x, y, w, h);
  }

  // A method that checks if the mouse coordinates is on the button, and if so then we change our "on" variable
  // to be on (it starts by being off)
  void click(float mx, float my) {
    if (mx > x - w/2 && mx < x+w/2 && my > y - h/2 && my < y + h/2) {
      on = !on; // toggle between off and on
    }
  }
}
