class Human{
  String name;
  
  Human(String name){
    this.name = name;
  }
  
  void driveCar(Car car){
    println(name + " is driving a " + car.carColor + ", " + car.model);
    car.showCarDetails();
  }
}
