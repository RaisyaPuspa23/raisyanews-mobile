class EnvConfig {
  EnvConfig._();

  static const String environment =
      String.fromEnvironment('ENV_NAME', defaultValue: 'DEV');

  static const String baseUrl =
      'https://newsapi.org/v2';

  static bool get isProduction => environment == 'PROD';
}