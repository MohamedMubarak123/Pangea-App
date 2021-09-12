import 'package:flutter/material.dart';
import 'package:pangea_app/screen/login/login_screen.dart';
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
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}
