int timer = 0;
int colorState = 0;

void backgroundColor() {
  color red = color(255, 0, 0);
  color green = color(0, 255, 0);
  color blue = color(0, 0, 255);
  
  timer++;

  if (timer % 100 == 0) {
    colorState = (colorState + 1) % 3;
  }

  switch(colorState) {
  case 0:
    background(red);
    rect(width/2, height/2, 100, 100);
    ellipse(250, 300, 100, 100);
    line(0, 0, width, height);
    break;
  case 1:
    background(green);
    rect(width/2, height/2, 100, 100);
    ellipse(250, 300, 100, 100);
    line(0, 0, width, height);
    break;
  case 2:
    background(blue);
    rect(width/2, height/2, 100, 100);
    ellipse(250, 300, 100, 100);
    line(0, 0, width, height);
    break;
  }
}
