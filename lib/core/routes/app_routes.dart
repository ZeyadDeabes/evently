import 'package:evently/core/routes/pages_route_name.dart';
import 'package:evently/modules/signIn/login_screen.dart';
import 'package:evently/modules/splash/splash_screen.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static Route OnGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRouteName.initial:
        return MaterialPageRoute(
            builder: (context) => const SplashScreen(),
            settings: settings);
      case PagesRouteName.signIn:
        return MaterialPageRoute(
            builder: (context) => LoginScreen(),
            settings: settings);
      default:
        return MaterialPageRoute(
            builder: (context) => const SplashScreen(),
            settings: settings);


    }
  }
}
