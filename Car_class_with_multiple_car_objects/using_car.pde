Car Car1; // We declare the object Car
Car Car2;
Car Car3;
Car Car4;
Car Car5;
void setup(){
  size(500,500);
  Car1 = new Car(100,100,color(255,125,0),5); // We initialize the object by telling it to create a new Car(), myCar is the name we give it. 
  //We create the object.
  
  Car2 = new Car(30,30,color(255,0,0),2);
  
  Car3 = new Car(300,240,color(255,40,126),6);
  
  Car4 = new Car(400,286,color(255,0,255),3);
  
  Car5 = new Car(200,400,color(255,255,0),7);
}

void draw(){
  background(0);
  Car1.drive();
  Car1.display(50,50);
  
  Car2.drive();
  Car2.display(20,30);
  
   Car3.drive();
  Car3.display(50,50);
  
  Car4.drive();
  Car4.display(20,30);
  
   Car5.drive();
  Car5.display(50,50);
}
