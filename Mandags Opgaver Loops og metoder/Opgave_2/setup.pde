int circleSize;
void setup(){
  size(400,400);
 circleSize = numberSquared(10); //<>// //<>//
 
 //ellipse(width/2,height/2,circleSize,circleSize);
 for(int i = 1; i <= 10; i++){
   int circleSize = numberSquared(i);
   
   ellipse(i*20,i*35/2,circleSize,circleSize);
 }
}
