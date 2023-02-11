class Constants {
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5';
  static const String contentType = 'application/json';

  //User for auth0 authentication
  static const String auth0Domain = 'dev-go1fkrrr3vx3etgn.us.auth0.com';

  // Open weather api key
  static const _openWeatherAPIKey = '751871495ed3c31ef02425dfda6db6fc';

  static get openWeatherAPIKey => _openWeatherAPIKey;

  // auth0 client ID
  static const _auth0ClientId = 'lXeEJYaiOHkHbZDanih4LWuhXbmMy7CW';

  static get auth0ClientId => _auth0ClientId;
}