import 'package:flutter/material.dart';
import 'package:pangea_app/components/service_card.dart';
import 'package:pangea_app/utils/colors.dart';
import 'package:pangea_app/utils/size_config.dart';

import 'home_header.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height / 4.4,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: const HomeHeader()),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.3,
              child: ListView(
                children: [
                  const ServiceCardWidget(
                    color: Colors.deepOrangeAccent,
                    title: "Live Consultation",
                    subTitle: "Live Consultation session with any provider",
                    icon: Icons.videocam,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  const ServiceCardWidget(
                    color: Colors.green,
                    title: "Book Appointment",
                    subTitle: "Book your activity with any register doctor",
                    icon: Icons.calendar_today_outlined,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  const ServiceCardWidget(
                    color: kPrimaryColor,
                    title: "My IPS",
                    subTitle: "View my IPS",
                    icon: Icons.insert_drive_file,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  const ServiceCardWidget(
                    color: kPrimaryLightColor,
                    title: "My QR Code",
                    subTitle: "Display your QR code to any provider",
                    icon: Icons.qr_code,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  const ServiceCardWidget(
                    color: Colors.grey,
                    title: "Upload report/file",
                    subTitle: "Upload clinical document in your IPS",
                    icon: Icons.cloud_upload_outlined,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  const ServiceCardWidget(
                    color: Colors.grey,
                    title: "Authorized Access",
                    subTitle: "Give Permission to upload UMF to any Provider",
                    icon: Icons.verified_user,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  const ServiceCardWidget(
                    color: kPrimaryLightColor,
                    title: "My Prescription",
                    subTitle: "View all your prescription",
                    icon: Icons.remove_from_queue,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  const ServiceCardWidget(
                    color: Colors.deepOrangeAccent,
                    title: "My Clinical Report",
                    subTitle: "View all your past clinical report",
                    icon: Icons.insert_drive_file,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  const ServiceCardWidget(
                    color: kPrimaryLightColor,
                    title: "My Calender",
                    subTitle: "View all upcoming event and prescription",
                    icon: Icons.calendar_today,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  const ServiceCardWidget(
                    color: kPrimaryColor,
                    title: "Insurance card",
                    subTitle: "View all your insurance details",
                    icon: Icons.credit_card,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
