int a = 25;
String b = "København";
float c = 22.3;
boolean landscape = true;

void setup(){
  println(a); //25
  println(b); //København
  int a = 16;
  int b = a;
  println(a+b); //32
  println(b+" "+landscape); //16 true
}

void draw(){
  float d = c;
  println(b); //københavn
  boolean b = false;
  int a = 700;
  println(a+d+" : "+b); //722.3 : false
  int f = 5;
  println(f*d); //111.5
  String displayOrientation = landscape?"landscape":"profile"; //landscape hvis variable
  //landscape er "true" og hvis ikke så print "profile)
  println(displayOrientation);
  noLoop();
}
