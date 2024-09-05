float circleX = 0;
float circleXSpeed = 1;
float circleY = 0;
float circleYSpeed = 1;
float circleCorner = circleX + circleY;
float circleCornerSpeed = circleYSpeed + circleXSpeed - 1;
void setup() {
  size(500, 500);
}

void draw() {
  background(50);
  fill(255);
  noStroke();
  ellipse(circleX, height/2, 24, 24);
  ellipse(width/2, circleY, 24, 24);
  ellipse(circleCorner, circleCorner, 24, 24);
  circleY = circleY + circleYSpeed;
  circleX = circleX + circleXSpeed;
  circleCorner = circleCorner + circleCornerSpeed;

  if ((circleX > width+24) && (circleY > height+24) && (circleCorner > width + 24)) { // If x-position of ellipse exceeds  the width of our window + 10, go back to x-position - 10 to make it smooth
    circleX = -15;
    circleY = -15;
    circleCorner = -15;
  }
  /*
 if(circleY > height+10){
   circleY = -10;
   }
   if(circleCorner > width){
   circleCorner = -10;
   }
   */
  if ((circleX > width/2) && (circleY > height/2)) { // if x-position  of ellipse exceeds the midway point of our window, change color to red
    background(50); //We draw a new background over the white ellipse and then draw a new ellipse with the red color.
    fill(255, 0, 0);
    ellipse(circleX-0.7, height/2, 24, 24); //NOT NEEDED ANYMOREcircleX-0.7 to draw the new circle at the exact same spot as the previous.
    fill(0, 255, 0);
    ellipse(width/2, circleY, 24, 24);
    fill(0, 0, 255);
    ellipse(circleCorner, circleCorner, 24, 24);
  }
  //println("CircleX position: " + circleX);
  //println("CircleY position: " + circleY);
  println(circleCorner);
  frameRate(120); // speed up the circle
}
