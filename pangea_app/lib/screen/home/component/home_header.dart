import 'package:flutter/material.dart';
import 'package:pangea_app/components/search_bar_widget.dart';
import 'package:pangea_app/style/style.dart';
import 'package:pangea_app/utils/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.only(top: getProportionateScreenHeight(30)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu,
                size: 30,
                color: Colors.white,
              ),
              Column(
                children: [
                  Text(
                    "Welcome",
                    style: Styles.h3,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Text(
                    "Dr.Mohamed",
                    style: Styles.h3,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Text(
                    "+971527133022",
                    style: Styles.h3,
                  ),
                ],
              ),
              const Icon(
                Icons.login_outlined,
                size: 30,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          const SearchBarWidget(),
        ],
      ),
    );
  }
}
