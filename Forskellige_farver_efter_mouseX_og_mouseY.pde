void setup(){
  size(400,400);
  background(255);
}

void draw(){
  background(255);
  if(mouseX < 200 && mouseY < 200){
    background(255,0,0);
  }else if(mouseX < 200 && mouseY > 200){
    background(0,255,0);
  }else if(mouseX > 200 && mouseY > 200){
    background(0,0,255);
  }else{
    background(#FFF25D);
  }
  strokeWeight(20);
  line(200,0,200,width);
  line(0,200,400,200);
}
