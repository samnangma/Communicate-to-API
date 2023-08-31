Future<String> getWeatherForecast() {
  return Future.delayed(Duration(seconds: 10), () => "Partly Cloudy");
}

void fetchWeatherForecast() async{
  print("start: fetchWeatherForecast");
  final forecast = await getWeatherForecast();
  print('result :: $forecast');
  // forecast.then(
  //   (value) => print("FetchWeatherForecast : $value"),
  // );
  print("end: fetchWeatherForecast");
}

void main(List<String> arguments) {
  print('start: main');
  fetchWeatherForecast();
  print('end: main');
}
