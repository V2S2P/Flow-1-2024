// Declaring two arrays of type int to hold our x and y coordinates
int[] xpos = new int[50];
int[] ypos = new int[50];

void setup() {
  size(500, 500);
  // Initializing the arrays, starting them at 0 since at the start of the program no mouse movement has been made
  for (int i = 0; i < xpos.length; i++) {
    xpos[i] = 0;
    ypos[i] = 0;
  }
}

void draw() {
  background(255);
  
  // With a for loop do we initialize each element of the xpos and ypos arrays to 0. 
  for (int i = 0; i <xpos.length - 1; i++) { //<>//
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }
  
  // Draw is a loop, so each time it loops we want to update our arrays with the current mouse location
  // We chose to put the current mouse location in the last spot of the array, since the length of the array
  // is 50, the index goes from 0-49. The last spot is 49 or the length(50) - 1.
  xpos[xpos.length-1] = mouseX;
  ypos[ypos.length-1] = mouseY;

  for (int i = 0; i < xpos.length; i++) {
    noStroke();
    fill(255-i);
    ellipse(xpos[i], ypos[i], 32, 32);
  }
  for (int i = 0; i < xpos.length; i++) {
    noStroke();
    fill(255-i*5);
    ellipse(xpos[i], ypos[i], 32, 32);
  }
}
