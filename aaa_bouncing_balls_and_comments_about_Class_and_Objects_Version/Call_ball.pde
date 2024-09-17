// Declaring the object "b" and "b2" and giving them the type of Ball, Ball is a type we made.
Ball b;
Ball b2;
Ball b3;
Ball b4;

void setup() {
  // We initialize our object. "b" and "b2" are both new instances of our "Ball" object.
  size(700, 700);
  // The Ball() part is calling our constructor that we made in our Class Ball.
  b = new Ball(0, 0, 3, 2.5, 50);
  b2 = new Ball(0, 400, 5, 2.5, 50);
  b3 = new Ball(0, 200, 3.7, 2.5, 50);
  b4 = new Ball(0, 100, 2.7, 2.5, 50);
}

void draw() {
  // Using dot syntax to call a function/method on our object of ball b and ball b2
  background(255);

  b.displayBall(60, color(#C92727));
  b.speed();
  b.checkEdges();
  b.bounceOffEach(b2, b3, b4);


  b2.displayBall(60, color(#F2BC33));
  b2.speed();
  b2.checkEdges();
  b2.bounceOffEach(b, b3, b4);

  b3.displayBall(60, color(#F5EF48));
  b3.speed();
  b3.checkEdges();
  b3.bounceOffEach(b, b2, b4);

  b4.displayBall(60, color(#F7760C));
  b4.speed();
  b4.checkEdges();
  if (b4.bounceOffEach(b, b2, b3)) {
    println("B4 collided with another ball!");
  }
}

void mousePressed() {
  // When mousePressed (when you click) the balls will pop and turn black.
  b.ballPop();
  b2.ballPop();
}
