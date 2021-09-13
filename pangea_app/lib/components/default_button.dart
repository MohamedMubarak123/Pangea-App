import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pangea_app/screen/home/home_screen.dart';
import 'package:pangea_app/utils/colors.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  // ignore: prefer_typing_uninitialized_variables
  final onPresse;

  const DefaultButton(
    this.text, {
    this.onPresse,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      constraints: const BoxConstraints(maxWidth: 500),
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: () {
          Get.to(() => const HomeScreen());
        },
        color: kPrimaryColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
