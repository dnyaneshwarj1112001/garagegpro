import 'package:flutter/material.dart';
import 'package:garagegpro/app/core/theme/app_theme.dart';
import 'package:garagegpro/app/routes/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'GaragePro',
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.router,
    );
  }
}
