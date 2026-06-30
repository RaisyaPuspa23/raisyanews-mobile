import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(const RaisyaNewsApp());
}

class RaisyaNewsApp extends StatelessWidget {
  const RaisyaNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'RaisyaNews',
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.router,
    );
  }
}