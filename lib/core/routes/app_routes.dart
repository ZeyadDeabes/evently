import 'package:evently/core/routes/pages_route_name.dart';
import 'package:evently/modules/signIn/login_screen.dart';
import 'package:evently/modules/signUp/sign_up_screen.dart';
import 'package:evently/modules/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../modules/forgetPassword/forget_password_screen.dart';

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
      case PagesRouteName.signUp:
        return MaterialPageRoute(
            builder: (context) => SignUpScreen(),
            settings: settings);
      case PagesRouteName.forgetPassword:
        return MaterialPageRoute(
            builder: (context) => ForgetPassword(),
            settings: settings);
      default:
        return MaterialPageRoute(
            builder: (context) => const SplashScreen(),
            settings: settings);


    }
  }
}
