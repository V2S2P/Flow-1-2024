/* Creating and initializing Arrays
int[] numbers; Declaring an array of type interger
Once it's been declared you can then initialize it
numbers = new int[5]; Crreates and array with 5 elements 
You can declare and initialize in a single line like so:
int[] numbers = new int[5]; Declaring and creating an array with 5 elements.

After initializing an array you can assign values to it:
numbers[0] = 10 Assigning 10 to the first element of the array
numbers[1] = 20 Assigning 20 to the second element of the array

You can also declare, initialize and assign all in one line:
int[] numbers = {10,20,30,40,50}; Creates an array and assigns values directly

String[] fruits = {"Apple", "Banana", "Orange"}; String array with initial values

To access a loop we can use a loop:
int[] numbers = {10,20,30,40,50};

for(int i = 0; i < numbers.length; i++){ The for loop iterates over each element of the "numbers" array, and numbers.length gives the total number
of elements in the array.
  println("Elements at index " + i + ": " + numbers[i]);
}
*/
