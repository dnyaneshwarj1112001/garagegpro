import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:garagegpro/app/core/constants/app_assets_images_path.dart';
import 'package:garagegpro/app/routes/app_routes_path.dart';
import 'package:garagegpro/features/auth/presentation/pages/loginPage.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool islogin = false;
  Future<void> _goToDashbord() async {
    await Future.delayed(Duration(seconds: 3));
    if (!mounted) return;
    if (islogin == true) {
      context.go(AppRoutepath.dashboard);
    } else {
      context.go(AppRoutepath.login);
    }
  }

  @override
  void initState() {
    super.initState();
    _goToDashbord();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppAssetsImagesPath.logo,
          width: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
