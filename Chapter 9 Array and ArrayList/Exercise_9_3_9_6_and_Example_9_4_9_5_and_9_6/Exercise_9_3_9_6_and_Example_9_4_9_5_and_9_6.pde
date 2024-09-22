/*Exercise 9.3
 
 int[] arrayOfInts = new int [30];
 
 float[] numbers = new float [100];
 
 Zoog[] zoogObjects = new Zoog[56];
 */
/*Exercise 9.4
 int[] numbers = new int [10]; //Valid
 
 float[] numbers = new float [5+6]; //Valid
 
 int num = 5;
 float[] numbers = new int [num]; //Invalid
 
 int num = (5*6)/2;
 float[] numbers = new //Valid I guess but not very tyipical in syntax
 float [num = 5];
 
 int num = 5;
 Zoog[] zoogs = new Zoog[num*10]; // Valid
/*Exercise 9.5
 Zoog[] zoogs = new Zoog[3]; // Creating an array of Zoog objects with space for 3 elements
 zoog[0] = new zoog(100,100,50,60,16); // initializes the first Zoog object in the array, with the specified params
 zoog[1] = new zoog(200,150,60,80,28); // initializes the second Zoog object in the array, with the specified params
 zoog[2] = new zoog(300,200,70,90,25); // initializes the third zoog object
 //Each zoog object is created using the "new zoog" syntax and then we pass in arguments to its constructor
 */
//Example 9.4 9.5 and 9.6
/*float[] values = new float[1000];
/*for(int n = 0; n < 1000; n++){
 values[n] = random(0,10);
 if(n % 10 == 0){
 println(n);
 }
 }*/
/*for(int i = 0; i < 1000; i++){
 values[i] = 10.0;
 }
 for(int i = 0; i < values.length; i++){
 println("Values[" + i + "] = " + values[i] * 2);
 }
 */
//Exercise 9.6
int[] nums = {5, 4, 2, 7, 6, 8, 5, 2, 8, 14}; // Initialize the array
for (int i = 0; i < nums.length; i++) {
  nums[i] = nums[i] * nums[i]; // each element at index i is squared
  // Example: nums[0] = 5*5 = 25
  println("After squaring: nums[" + i + "] = " + nums[i]);
}
println("-----------");
for (int i = 0; i < nums.length; i++) {
  nums[i] += int(random(0, 11)); // For each element, a random int between 0 and 10 is generated and added
  // to nums[i]
  println("After adding random: nums[" + i + "] = " + nums[i]);
}
println("-----------");
for (int i = 0; i < nums.length - 1; i++) { // We skip the last element of the array with the nums.length - 1
  nums[i] += nums[i + 1]; // each element at index i is updated by adding the value of the next element(nums[i+1])
  // Example: if nums[0] is 25 + random number, and nums[1] is 16 + random number
  // then nums[0] becomes nums[0] + nums[1]
  println("After adding next: nums[" + i + "] = " + nums[i]);
}
println("-----------");
int sum = 0; // initialize a variable called sum
for (int i = 0; i < nums.length; i++) {
  sum += nums[i]; // the value of each element is added to the sum variable using sum += sum[i]
}
println("Sum: " + sum); // We print the total sum
