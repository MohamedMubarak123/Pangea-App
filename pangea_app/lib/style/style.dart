import 'package:flutter/material.dart';
import 'package:pangea_app/utils/colors.dart';

class Styles {
  static TextStyle defaultStyle = TextStyle(color: Colors.grey[900]);

  static TextStyle h1 = defaultStyle.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 20.0,
    color: kPrimaryColor,
    height: 22 / 18,
  );

  static TextStyle h2 = defaultStyle.copyWith(
    fontWeight: FontWeight.w700,
    color: kPrimaryColor,
    fontSize: 16.0,
    height: 22 / 18,
  );

  static TextStyle h3 = defaultStyle.copyWith(
    fontWeight: FontWeight.w700,
    color: Colors.grey[700],
    fontSize: 18.0,
    height: 22 / 18,
  );

  static InputDecoration input = InputDecoration(
    fillColor: Colors.white,
    focusColor: kPrimaryColor,
    contentPadding:
        EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0), //here your padding
    filled: true,
    hintStyle: TextStyle(color: Colors.grey[800]),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: kPrimaryColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: kPrimaryColor),
    ),
    // border: OutlineInputBorder(
    //     borderSide: const BorderSide(color: kPrimaryColor, width: 2),
    //     borderRadius: BorderRadius.circular(10.0)),
  );
}
