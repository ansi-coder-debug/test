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
         Text(
          movieName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        KHeight,
        Text(
         description,
         maxLines: 4,
         overflow: TextOverflow.ellipsis,
          style:const TextStyle(color:
           AppStyles.CGreycolor),
        ),
        AppStyles.KHeight50,
         VideoWidget(url:posterPath),
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
