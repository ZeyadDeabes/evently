import 'package:evently/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'modules/signIn/login_screen.dart';
import 'modules/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.OnGenerateRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Sets global background color to white
      ),
    );
  }
}


