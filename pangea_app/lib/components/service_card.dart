import 'package:flutter/material.dart';
import 'package:pangea_app/style/style.dart';
import 'package:pangea_app/utils/size_config.dart';

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget(
      {Key? key, this.color, this.title, this.sub_title, this.icon})
      : super(key: key);

  final Color? color;

  final String? title, sub_title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(7)),
      padding: const EdgeInsets.all(15),
      child: Column(children: <Widget>[
        Row(
          children: [
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Icon(
              icon!,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title!,
                    style: Styles.h3,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Text(
                    sub_title!,
                    style: Styles.h3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
