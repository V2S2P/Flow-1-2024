class Car{
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  Car(color tmpc, float tmpXpos, float tmpYpos, float tmpXspeed){
    c = tmpc;
    xpos = tmpXpos;
    ypos = tmpYpos;
    xspeed = tmpXspeed;
  }
  
  void display(){
    rectMode(CENTER);
    stroke(0);
    fill(c);
    rect(xpos,ypos,20,10);
  }
  
  void move(){
    xpos = xpos + xspeed;
    if(xpos > width){
      xpos = 0;
    }
  }
}
