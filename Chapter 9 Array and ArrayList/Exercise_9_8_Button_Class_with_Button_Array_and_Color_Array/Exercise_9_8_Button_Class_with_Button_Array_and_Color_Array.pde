// We say we want to create an array of type Button, we call the array button and we want to make an array with 6
Button[] button = new Button[6];

void setup() {
  size(1000, 1000);
  // we make an array of type Color, we call the array colors and we create 6 colors for our 6 buttons
  color[] colors = {
    color(255, 0, 0),
    color(0, 255, 0),
    color(0, 0, 255),
    color(255, 125, 0),
    color(0, 125, 255),
    color(0, 125, 125)
  };
  // We initialize our button array with unique positions and colors using a for loop
  for (int i = 0; i < button.length; i++) {
    button[i] = new Button(100 + i * 150, 200, 50, 50, colors[i]);
  }
}

void draw() {
  // We use the loop here to ensure that the buttons are displayed each time the draw() loop loops
  for (int i = 0; i < button.length; i++) {
    // The reason it says button[i] is because we loop through the array and so in the first iteration i will be =
    // 0, then i will be = 1 and then 2 and 3 and so on, so when we say button[i] we basically call what position
    // in the button array we currently are on.
    button[i].display();
  }
}
void mousePressed() {
  // We use the loop here to check whether the click occurred inside one of the buttons. The loop goes through
  // all the buttons in the array and calls the click() method on each one.
  for (int i = 0; i < button.length; i++) {
    button[i].click(mouseX, mouseY);
  }
}
