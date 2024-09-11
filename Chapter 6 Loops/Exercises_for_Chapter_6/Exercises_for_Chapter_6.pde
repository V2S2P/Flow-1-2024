/*Exercise 6-1
 
 size(200,200);
 background(255);
 int y = 0;
 while(y < height){
 stroke(0);
 line(0,y,width,y);
 y = y + 5;
 }
 */
/*
size(400,400);
 background(255);
 float w = width;
 while(w > 0){
 stroke(0);
 fill(w);
 ellipse(width/2,height/2,w,w);
 w = w - 20;
 }
 */
/*Exercise 6-2
 size(200,200);
 background(255);
 for(int y = 0; y < height; y += 5){
 line(0,y,width,y);
 }
 */
/*
void setup() {
 size(200, 200);
 background(255);
 }
 void draw() {
 for (float w = width; w > 0; w -=20) {
 stroke(0);
 fill(w);
 ellipse(width/2, height/2, w, w); // The first ellipse will be the biggest one, then w will decrease
 // its size by 20 pixels and create a new circle, and it will loop that until the condition of
 // w > 0 is met and it can't decrease its size by 20 anymore.
 }
 }
 */
/*Exercise 6-3
 //Drawing D
 void setup(){
 size(300,300);
 background(255);
 }
 
 void draw(){
 for(int i = 0; i < 10; i++){
 rect(i*20,height/2,5,5);
 }
 }
 */
/* Drawing A
 void setup(){
 size(300,300);
 background(255);
 }
 
 void draw(){
 int i = 0;
 while(i < 10){
 ellipse(width/2,height/2,i*10,i*20);
 stroke(0);
 noFill();
 i++;
 }
 }
 */
/* Drawing B
 void setup(){
 size(300,300);
 background(255);
 }
 
 void draw(){
 for(float i = 1.0; i < width; i*=1.1){
 stroke(0);
 noFill();
 rect(0,i,i,i*2);
 }
 }
 */
/* Drawing C
 void setup(){
 size(300,300);
 background(255);
 }
 
 void draw(){
 int x = 0;
 for(int c = 255; c > 0; c -= 15){
 fill(c);
 rect(x,height/2,10,10);
 x = x + 10;
 }
 }
 */
/* Exercise 6-4
 A
 int count = 0;
 
 void setup(){
 size(200,200);
 }
 
 void draw(){
 count = count + 1;
 background(count);
 }
 */
/* A as well, it will be black because we set count to be 0, and our count = count = 1 does not work
 void setup(){
 size(200,200);
 }
 
 void draw(){
 int count = 0;
 count = count = 1;
 background(count);
 }
 */
/*
int y = 0;
 void setup() {
 size(200, 200);
 background(255);
 frameRate(5);
 }
 void draw() {
 //for (y = 0; y < height; y += 10) {
 frameRate(0);
 line(0, y, width, y);
 y += 10;
 }
 }
 */
/*Exercise 6-5
 int endY;
 void setup(){
 size(200,200);
 frameRate(5);
 endY = 0;
 }
 
 void draw(){
 background(255);
 for(int y = 0; y < endY; y += 10){
 stroke(0);
 line(0,y,width,y);
 }
 endY += 10;
 if(endY > height){
 endY = 0;
 }
 }
 */

/* Example 6.9
 void setup() {
 size(255, 255);
 background(0);
 }
 
 void draw() {
 background(0);
 int i = 0;
 while (i < width) {
 noStroke();
 float distance = abs(mouseX - i);
 fill(distance);
 rect(i, 0, 10, height);
 i+= 10;
 }
 }
 */
/*Exercise 6-6
void setup() {
  size(255, 255);
  background(0);
}

void draw() {
  background(0);
  for (int i = 0; i < width; i+=10) {
    noStroke();
    float distance = abs(mouseX - i);
    fill(distance);
    rect(i, 0, 10, height);
  }
}
*/
