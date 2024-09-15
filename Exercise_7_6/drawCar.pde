void drawCar(int x, int y, int theSize, color c) {
  /*int x = 100;
  int y = 100;
  int theSize = 64;*/
  int offset = theSize/4;

  rectMode(CENTER);
  stroke(0);
  fill(c);
  rect(x, y, theSize, theSize/2);

  fill(200);
  rect(x-offset, y-offset, offset, offset/2);
  rect(x+offset, y-offset, offset, offset/2);
  rect(x-offset, y+offset, offset, offset/2);
  rect(x+offset, y+offset, offset, offset/2);
}
