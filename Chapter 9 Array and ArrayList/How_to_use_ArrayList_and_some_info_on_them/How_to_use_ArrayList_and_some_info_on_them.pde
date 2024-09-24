import java.util.ArrayList;
import java.util.Collections;
// ArrayList do not have a fixed limit, it is dynmaic
// Declaring an ArrayList
ArrayList<String> cars = new ArrayList<>();
ArrayList<String> friends = new ArrayList<>();
// Declaring and initializing an ArrayList with values
ArrayList<String> friends2 = new ArrayList<>(Arrays.asList("john","Chris","Eric","Luke")

cars.add("Volov");
cars.add("BWM");
println(cars);

cars.add(2, "Mazda");
println(cars);

cars.get(0);

cars.set(0, "Opel");
println(cars);

cars.remove(0);
println(cars);

//cars.clear();
//println(cars);

println(cars.size());

for (int i = 0; i < cars.size(); i++) {
  println(cars.get(i));
}
for (String i : cars) {
  println(i);
}

//To use primitive types you must use a wrapper like so:
/*ArrayList<Integer> myNumbers = new ArrayList<>();
myNumbers.add(10);
myNumbers.add(15);
myNumbers.add(20);
myNumbers.add(25);
for(int i: myNumbers){
  println(i);
}*/

//You can use "Collections" class to sort a list
ArrayList<Integer> myNumbers = new ArrayList<>();
myNumbers.add(100);
myNumbers.add(50);
myNumbers.add(2);
myNumbers.add(56);
Collections.sort(myNumbers);
for(int k: myNumbers){
  println(k);
}
