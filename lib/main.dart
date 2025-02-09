import 'package:bot_toast/bot_toast.dart';
import 'package:evently/core/routes/app_routes.dart';
import 'package:evently/core/theme/app_theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';

import 'modules/signIn/login_screen.dart';
import 'modules/splash/splash_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
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
      navigatorKey: navigatorKey,
      theme: AppThemeManager.LightTheme,
      builder: EasyLoading.init(
        builder: BotToastInit(),
      ),
    );
  }
}
