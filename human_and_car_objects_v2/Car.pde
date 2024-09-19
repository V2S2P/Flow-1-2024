class Car{
  String model;
  String carColor;
  
  Car(String model,String carColor){
    this.model = model;
    this.carColor = carColor;
  }
  
  void showCarDetails(){
    println("Car model: " + model + ", Color: " + carColor);
  }
}
