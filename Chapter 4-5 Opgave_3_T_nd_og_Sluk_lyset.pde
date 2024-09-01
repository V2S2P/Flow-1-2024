boolean lightOn = true; // Variabel der holder styr på om lyset er tændt eller slukket

void setup() {
  size(400, 400); // Sætter størrelsen på vinduet
}

void draw() {
  if (lightOn) {
    background(255); // Hvid baggrund hvis lyset er tændt
    fill(255, 255, 0); // Gul farve til cirklen
    ellipse(width/2, height/2, 200, 200); // Tegner en gul cirkel i midten af skærmen
  } else {
    background(0); // Sort baggrund hvis lyset er slukket
  }
}

void keyPressed() {
  lightOn = !lightOn; // Skifter værdien af lightOn mellem true og false
}
