float zoogX;
float zoogY;

float eyeR;
float eyeG;
float eyeB;

void setup(){
  size(200,200);
  zoogX =  width/2; //zoogX and zoogY are initialized based on the windowsize.
  zoogY = height/2;
  smooth();
}

void draw(){
  background(255);
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //Zoogs body
  stroke(0);
  fill(150);
  rect(zoogX,zoogY,20,100);
  
  //Zoogs head
  stroke(0);
  fill(255);
  ellipse(zoogX,zoogY-30,60,60);
  
  //Zoogs eyes
  eyeR = random(255);
  eyeG = random(255);
  eyeB = random(255);
  fill(eyeR,eyeG,eyeB);
  
  ellipse(zoogX-19,zoogY-30,16,32);
  ellipse(zoogX+19,zoogY-30,16,32);
  
  //Zoogs legs
  stroke(150);
  line(zoogX-10,zoogY+50,zoogX-10,height);
  line(zoogX+10,zoogY+50,zoogX+10,height);
  
  //Zoog move up
  zoogY = zoogY - 1;
  
  //Zoogs legs shake
  zoogX = zoogX + random(-5,5);
}
  
