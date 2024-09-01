void setup(){
  size(400,400);
  background(255);
}    

void draw(){
  if(mouseX > width/2){
    background(255,0,0);
  } else{
    background(0,0,255);
  }
  strokeWeight(10);
  line(200,400,200,0);
}
