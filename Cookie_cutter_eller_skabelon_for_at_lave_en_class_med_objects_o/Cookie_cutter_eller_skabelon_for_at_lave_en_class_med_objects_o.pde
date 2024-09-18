class Rectangle{
  // data for rectangle også kaldet "Instansvariable"
  int height;
  int width;
  
  // Constructor er hvor vores Instansvariable bliver initialized
  Rectangle(int height, int width){
    this.height = height;
    this.width = width;
  }
  // Function/Method that, when called, returns the value of height*width
  // It gets called in setup with the println(r1.getArea()) and println(r2.getArea());
  // Methodesignatur er metodens navn og parametre
  int getArea(){
    return height*width;
  }
}

void setup(){
  Rectangle r1 = new Rectangle(5,7);
  Rectangle r2 = new Rectangle(10,6);
  
  // Her gemmer vi return værdien fra getArea() i en variable vi kalder "area", vi printer så variablen "area" til sidst.
  int area = r1.getArea();
  // Here bliver der brugt en reference ved r1.getArea, objektet r1 referere altså til getArea og kigger på hvad der skal
  // gøres i den metode.
  println(r1.getArea());
  println(r2.getArea());
  println(area);
}
  
