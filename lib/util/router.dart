import 'package:coffee_management_system/screen/bottom_bar/bottom_bar.dart';
import 'package:coffee_management_system/screen/login/login.dart';
import 'package:coffee_management_system/screen/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/bottomBar':
        return MaterialPageRoute(builder: (_) => BottomBar());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
