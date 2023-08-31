Future<String> getWeatherForecast() {
  return Future.delayed(Duration(seconds: 10), () => "Partly Cloudy");
}

void fetchWeatherForecast() {
  print("start: fetchWeatherForecast");
  final forecast = getWeatherForecast();
  forecast.then(
    (value) => print("FetchWeatherForecast : $value"),
  );
  print("end: fetchWeatherForecast");
}

void main(List<String> arguments) {
  print('start: main');
  fetchWeatherForecast();
  print('end: main');
}
