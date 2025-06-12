import 'package:flutter/material.dart';
import 'package:test/core/colors/colors.dart';
import 'package:test/core/constant.dart';
import 'package:test/presentaion/home/widget/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(KMainImage)),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(title: 'MyList', icon: Icons.add),
                _PlayButton(),
                const CustomButtonWidget(icon: Icons.info, title: 'info'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextButton _PlayButton() {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Kwhitecolor)),
      icon: const Icon(Icons.play_arrow, size: 25, color: Kblackcolor),
      label: const Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text("play", style: TextStyle(fontSize: 20, color: Kblackcolor)),
      ),
    );
  }
}
