void bounce(){
  if((globalX > width) || (globalX < 0)){
    speed = speed * -1;
  }
}
