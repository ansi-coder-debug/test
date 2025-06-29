import 'package:flutter/material.dart';
import 'package:test/core/app_styles.dart';
import 'package:test/core/colors/colors.dart';
import 'package:test/core/constant.dart';
import 'package:test/presentaion/home/widget/custom_button_widget.dart';

import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;

  const ComingSoonWidget({super.key, 
  required this.id,
   required this.month,
    required this.day, 
    required this.posterPath,
     required this.movieName,
   required this.description});

  

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
                month,
                style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 2,
                  color: AppStyles.CGreycolor,
                ),
              ),
              Text(
                day,
                style:const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
               VideoWidget(url: posterPath,),
              /*here need to code from sunday*/
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Expanded(
                    child: Text(
                      movieName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        // letterSpacing: -5,
                      ),
                    ),
                  ),
                  // const Spacer(),
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
               Text('$day,$month'),
              KHeight,
              Text(
                movieName,
                 maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              KHeight,
              Text(
               description,
               maxLines: 4,
                style: TextStyle(color: AppStyles.CGreycolor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
