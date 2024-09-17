class Ball{ // A class is something that has data for our object and the functionality(methods) of it.
  // Data
  float x;
  float y;
  float xspeed;
  float yspeed;
  
  // Constructor
  // The Constructor is the moment the object is born, so when we give it these parameters we tell it to be born
  // with these values from the start.
  Ball(float xstart, float ystart, float speedX, float speedY){
    x = xstart;
    y = ystart;
    xspeed = speedX;
    yspeed = speedY;
  }
   
   // Method for displaying the ball, its width, height and color
   void displayBall(float w, float h, color c){
     stroke(0);
     fill(c);
     ellipse(x,y,w,h);
   }
   // Method for the speed of the ball, both on the x-axis and y-axis
   void speed(){
     println(xspeed);
     x = x + xspeed;
     y = y + yspeed;
   }
   // Method for checking when the balls hit the edges, if they hit either the left or right edge they will bounce
   // back, and if they hit either the top or bottom they will also bounce back.
   void checkEdges(){
     if(x > width || x < 0){
       xspeed = xspeed * -1;
     }
     if(y > height || y < 0){
       yspeed = yspeed * -1;
     }
   }
}
