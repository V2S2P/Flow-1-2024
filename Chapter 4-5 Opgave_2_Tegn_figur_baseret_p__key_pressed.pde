void setup(){
  size(400,400);
  background(255);
}

void draw(){
  if(key == 'z'){
    circle(width/2,height/2,50);
  }else if(key == 'x'){
    rect(140,110,50,50);
  }else if(key == 'c'){
    triangle(360,244,200,60,30,150);
  }
}
