import 'dart:async';
import 'package:evently/core/routes/pages_route_name.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(context,
          PagesRouteName.signIn,
          (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
              height: 200,
              child: Image.asset("assets/images/evently_logo.png"))),
    );
  }
}
