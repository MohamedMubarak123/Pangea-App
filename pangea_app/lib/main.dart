import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pangea_app/route_generator.dart';
import 'package:pangea_app/screen/login/login_screen.dart';
import 'package:pangea_app/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pangea app',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
    );
  }
}
