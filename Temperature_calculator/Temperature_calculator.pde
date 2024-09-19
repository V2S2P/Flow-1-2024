class TemperatureConverter{
  void convertToFarhrenheit(int celsius){
    int fahrenheit = (celsius * 9/5) + 32;
    println(celsius + " celsius In fahrenheit is: " + fahrenheit + " degrees");
  }
  int convertToCelsius(int fahrenheit){
    int celsius = (fahrenheit-32) * 5/9;
    return celsius;
    //println(fahrenheit + " fahrenheit In celsius is: " + celsius + " degrees");
  }
}
  TemperatureConverter converter;
  TemperatureConverter converter2;
  void setup(){
    converter = new TemperatureConverter();
    converter2 = new TemperatureConverter();
    
    converter.convertToFarhrenheit(25);
    converter2.convertToFarhrenheit(60);
    
    //converter.convertToCelsius(80);
    int result = converter.convertToCelsius(90);
    println(result + " celsius");
  }
