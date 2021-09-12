import 'package:flutter/material.dart';
import 'package:pangea_app/utils/colors.dart';
import 'package:pangea_app/utils/size_config.dart';

import 'component/login_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/login";

  const SignInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Scaffold(
      backgroundColor: kShadowColor,
      body: LoginBody(),
    );
  }
}
