import 'package:flutter/material.dart';
import 'package:test/core/app_styles.dart';
import 'package:test/core/colors/colors.dart';
import 'package:test/core/constant.dart';
import 'package:test/presentaion/home/widget/custom_button_widget.dart';

import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            children: [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: AppStyles.CGreycolor,
                ),
              ),
              Text(
                "11",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              /*here need to code from sunday*/
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Tall Girl 2",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -5,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      CustomButtonWidget(
                        icon: Icons.refresh,
                        title: "Remind Me",
                        iconSize: 20,
                        textSize: 16,
                      ),
                      Kwidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: "Info",
                        iconSize: 20,
                        textSize: 16,
                      ),
                      Kwidth,
                    ],
                  ),
                ],
              ),
              const Text("Coming On Friday"),
              KHeight,
              Text(
                "Tall Girl 2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              KHeight,
              Text(
                "Landing the lead in the school musical is a dream come true for Jodi, until the pressure of being center stage turns her new-found confidence - and her relationship - into a tailspin.",
                style: TextStyle(color: AppStyles.CGreycolor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
