import java.util.*;
void setup(){
  // Declared that an ArrayList of type "Car" exists and it's called "cars"
  ArrayList<Car> cars = new ArrayList<>();
  // Declared that an ArrayList of type String exists and it's called "carNames", and then
  // initialized it with a list of brand names.
  ArrayList<String> carNames = new ArrayList<>(Arrays.asList("Volvo","BMW","Mazda","Mercedes","Toyota"));
  // Since we use ArrayList we can add to it with the carNames.add
  carNames.add("Ford");
  
  //String[] carNames = {"Volvo","BMW","Mazda","Mercedes","Toyota"};
  
  /*for(int i = 0; i < carNames.size(); i++){
    cars.add(new Car(carNames[i]));
  }*/
  // Here we use a for each loop to iterate over each String in the carNames list.
  // For each "name", it creates a new instance of the "Car" object using new Car(name), where name
  // is passed to the Car constructor.
  for(String name: carNames){
    // We then add the newly created "Car" object to the "cars" list
    cars.add(new Car(name));
  }
  
  println("");
  // This second for each loop iterated over each "Car" object in the "cars" list.
  // For each "Car" object "c", it calls the method c.printCarName(), which prints the brand name
  // of the car.
  for(Car c:cars){
    c.printCarName();
  }
}
