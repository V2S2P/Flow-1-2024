int circleSize; //size of the ellipses
int numberOfCircles; //amount of ellipses
int x,y; // location of ellipses
int counter = 0;
int rowCounter = 0;

void setup(){
  size(500,500);
  
  numberOfCircles = 50; //We initialize the amount of ellipses, it's easiest to just pick your window width number divided by 10
  circleSize = width/numberOfCircles; // We initialize the size of the ellipse, we do width(500)/numberOfCircles(50) to get a circle size of 10
  ellipseMode(CORNER); //Start in the corner of the window
}

void draw(){
  x = circleSize*counter; // This gives x an initial position of 0
  y = circleSize*rowCounter; // This gives y an initial position of 0
  
  fill(255);
  ellipse(x,y,circleSize,circleSize);
  
// Using an if-statment we can create circles until we reach the end of the width
  if(frameCount % numberOfCircles == 0){ //<>//
    counter = 0;
    rowCounter += 1;
  }else{
    counter += 1;
  }
}
