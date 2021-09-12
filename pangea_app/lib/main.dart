import 'package:flutter/material.dart';
import 'package:pangea_app/route_generator.dart';
import 'package:pangea_app/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pangea app',
      theme: theme(),
      initialRoute: '/homeScreen',
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
