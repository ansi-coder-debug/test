import 'package:flutter/material.dart';
import 'package:test/core/app_styles.dart';
import 'package:test/core/constant.dart';
import 'package:test/presentaion/home/widget/custom_button_widget.dart';
import 'package:test/presentaion/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
 final String posterPath;
  final String movieName;
  final String description;

  const EveryonesWatchingWidget({super.key,
   required this.posterPath,
    required this.movieName,
     required this.description});

 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KHeight,
        const Text(
          "Friends",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        KHeight,
        const Text(
          "This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfalls of worh, life and love in 1990s manhattan",
          style: TextStyle(color: AppStyles.CGreycolor),
        ),
        AppStyles.KHeight50,
         VideoWidget(url: newAndHotTempImage,),
        KHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget(
              icon: Icons.share,
              title: "Share",
              iconSize: 25,
              textSize: 16,
            ),
            Kwidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: "My List",
              iconSize: 25,
              textSize: 16,
            ),
            Kwidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 25,
              textSize: 16,
            ),
            Kwidth,
          ],
        ),
      ],
    );
  }
}
