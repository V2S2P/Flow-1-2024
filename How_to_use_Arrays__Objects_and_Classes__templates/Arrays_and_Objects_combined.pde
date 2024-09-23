/* Using classes, objects and array together
void setup(){
   Declare and create and array of "Person" objects
  Person[] people = new Person[3]; Array of 3 "Person" objects
  
  Initialize each "Person" object:
  perple[0] = new Person("Alice", 30);
  people[1] = new person("Bob", 25);
  people[2] = new person("Charlie", 20);
  
  
  Loop through the "people" array and print each person's information:
  for(int i = 0; i < people.length; i++){
    people[i].displayInfo(); Calling the displayInfo method for each "Person" object in the "people" array, people[i] makes sure we go through
    the entire array and call the method on all of them.
  }
}
*/
