// We use name route
// All our routes will be available here
import 'package:flutter/material.dart';
import 'package:pangea_app/screen/home/home_screen.dart';
import 'package:pangea_app/screen/login/login_screen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => const LoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};
