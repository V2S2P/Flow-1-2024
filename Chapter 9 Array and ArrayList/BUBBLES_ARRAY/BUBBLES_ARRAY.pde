// Declaring that an array of type Bubble exists, and that we want to have 25 of them in the array
Bubble[] bubbles = new Bubble[10];
int total = 0;
void setup() {
  size(640, 360);
  // Initializing the bubble array. We use the loop to go through all the bubbles in the array and giving them a size.
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(i*4);
  }
}

void mousePressed() {
  total = total + 1;
  if (total > bubbles.length) {
    total = bubbles.length;
  }
  println(total - 1);
}

void keyPressed() {
  total = total - 1;
  println(total - 1);
}

void draw() {
  background(255);
  // We use this loop to once again go through the entire Bubble array and telling all the bubble objects in the array to call these
  // methods we have created in the Bubble class.
  for (int i = 0; i < total; i++) {
    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].top();
  }
}
