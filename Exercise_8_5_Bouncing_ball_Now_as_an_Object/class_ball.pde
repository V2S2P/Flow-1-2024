class Ball{
  color c;
  float x;
  float y;
  float grav;
  float ballSpeed;
  
  Ball(float xstart, float ystart, float speed, float gravStart, color ballCol){
    x = xstart;
    y = ystart;
    grav = gravStart;
    ballSpeed = speed;
    c = ballCol;
  }
  
  void display(float w, float h){
    fill(c);
    ellipse(x,y,w,h);
    println("y" + y);
  }
  
  void bounce(){
    y = y + ballSpeed;
    ballSpeed = ballSpeed + grav;
    
    if(y > height){
      ballSpeed = ballSpeed * -0.95;
    }
  }
}
