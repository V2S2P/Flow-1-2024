int tempInput = 30;
String conversionChoice = "c";

void setup(){
convertTemperature();
}


float celsiusToFahrenheit(float celsius){
  return (celsius * 9/5) + 32;
}

float fahrenheitToCelsius(float fahrenheit){
  return (fahrenheit - 32) * 5/9;
}

void convertTemperature(){
  if(conversionChoice == "C" ||conversionChoice == "c"){
    float result = celsiusToFahrenheit(tempInput); // we pass the the tempInput = 30 into the float celsius argument, so when we say
    // tempInput = 30; we give celsiusToFarhrenheit function the float celsius variable the number of the tempInput.
    println(tempInput + " Celsius is " + result + " Fahrenheit");
  }else if(conversionChoice == "F" || conversionChoice == "f"){ // We do the exact same with the farhrenheitToCelsius function
    float result = fahrenheitToCelsius(tempInput);
    println(tempInput + " Fahrenheit is " + result + " Celsius");
  }
}
