import 'package:flutter/material.dart';
import 'package:pangea_app/screen/home/component/screen_body.dart';
import 'package:pangea_app/utils/colors.dart';
import 'package:pangea_app/utils/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Scaffold(
      backgroundColor: kShadowColor,
      body: HomeBody(),
    );
  }
}
