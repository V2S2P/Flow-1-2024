// Declaring the object "b" and "b2" and giving them the type of Ball, Ball is a type we made.
Ball b;
Ball b2;

void setup() {
  // We initialize our object. "b" and "b2" are both new instances of our "Ball" object.
  size(400, 400);
  // The Ball() part is calling our constructor that we made in our Class Ball.
  b = new Ball(0, 0, 3, 2.5, 50);
  b2 = new Ball(0, 400, 5, 2.5, 50);
}

void draw() {
  // Using dot syntax to call a function/method on our object of ball b and ball b2
  background(255);

  b.displayBall(30, color(255, 150, 0));
  b.speed();
  b.checkEdges();
  b.bounceOffEach();


  b2.displayBall(60, color(255, 0, 0));
  b2.speed();
  b2.checkEdges();
  b2.bounceOffEach();
}

void mousePressed() {
  // When mousePressed (when you click) the balls will pop and turn black.
  b.ballPop();
  b2.ballPop();
}
