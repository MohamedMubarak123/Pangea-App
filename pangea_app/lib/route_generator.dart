import 'package:flutter/material.dart';
import 'package:pangea_app/screen/home/home_screen.dart';
import 'package:pangea_app/screen/login/login_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/LoginScreen':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/homeScreen':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
