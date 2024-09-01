void setup(){
  size(400,400);
  background(255);
  
  //Hoved
  fill(#F5F3C8);
  ellipse(200,200,300,300);

  
  //Øjne
  fill(#5A92FF);
  ellipse(150,150,30,30);
  ellipse(250,150,30,30);
  
  //Næse
  //line(200,200,250,250);
  line(200,180,200,250);
  
   
  //Mund
  fill(255,255,255);
  arc(200,270,200,100,0,PI);
  line(300,269,100,269);



}
