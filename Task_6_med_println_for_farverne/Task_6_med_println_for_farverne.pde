color redLight = color(255, 0, 0); //<>//
color yellowLight = color(255, 226, 0);
color greenLight = color(0, 255, 0);
color lightOff = color(50);

color currentRedLight = lightOff;
color currentYellowLight = lightOff;
color currentGreenLight = lightOff;

int timer = 0; // The timer for changing the light
int lightState = 0; // variable to keep track of the current light state
int previousLightState = -1;
void setup() {
  size(500, 600);
  rectMode(CENTER);
  noStroke();
  rect(width/2, height/2, 200, 500);
}
void draw() {

  // Opdate timer
  timer++; //<>//
  // Changing status every 100 frames (about every 3 seconds since processing is 60fps standard)
  if (timer % 100 == 0) {
    lightState = (lightState + 1) % 4; // Changing between 4 conditions
  }
  
  if(lightState != previousLightState){
    previousLightState = lightState;
  
  // Switch statement for chaning the color based on the condition
  switch(lightState) {
  case 0: // red light
  println("red light is on");
    currentRedLight = redLight;
    currentYellowLight = lightOff;
    currentGreenLight = lightOff;
    break;
  case 1: // yellow light and red light
  println("red and yellow lights are on");
    currentRedLight = redLight;
    currentYellowLight = yellowLight;
    currentGreenLight = lightOff;
    break;
  case 2: // green light only
  println("green light is on");
    currentRedLight = lightOff;
    currentYellowLight = lightOff;
    currentGreenLight = greenLight;
    break;
  case 3: // green light and red light
  println("green and yellow lights are on, changing back to red");
    currentRedLight = lightOff;
    currentYellowLight = yellowLight;
    currentGreenLight = greenLight;
    break;
  }
}
  // Creating the ellipses and giving them the appropriate color of a traffic light
  fill(currentRedLight);
  ellipse(width/2, height/2-150, 100, 100);

  fill(currentYellowLight);
  ellipse(width/2, height/2, 100, 100);

  fill(currentGreenLight);
  ellipse(width/2, height/2+150, 100, 100);
  
  
}
