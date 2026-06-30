import 'package:flutter/material.dart';

import '../config/env_config.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    final Color seedColor = EnvConfig.isProduction
        ? const Color(0xFF1E3A8A) // PROD (Dark Blue)
        : const Color(0xFF8B5CF6); // DEV (Soft Purple)

    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: seedColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}