import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test/core/constant.dart';
import 'package:test/presentaion/home/widget/background_card.dart';
import 'package:test/presentaion/home/widget/custom_button_widget.dart';
import 'package:test/presentaion/home/widget/number_title_card.dart';
import 'package:test/presentaion/widgets/main_card.dart';
import 'package:test/presentaion/widgets/main_title.dart';
import 'package:test/presentaion/widgets/main_title_card.dart';
import 'package:flutter/material.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }

              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    BackgroundCard(),
                    MainTitleCard(title: "Released in the past year"),
                    KHeight,
                    MainTitleCard(title: "Trending now"),
                    KHeight,
                    NumberTitleCard(),
                    KHeight,
                    MainTitleCard(title: "Tense Dramas"),
                    KHeight,
                    MainTitleCard(title: "South Indian Cinema"),
                  ],
                ),
                scrollNotifier.value == true
                    ? Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: AnimatedContainer(
                          duration: const Duration(microseconds: 1000),
                          width: double.infinity,
                          height: 90,
                          color: Colors.black.withOpacity(0.5),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    "https://cdn.dribbble.com/users/9378043/screenshots/16832559/media/10b207c918d604662e088308d16b366d.png",
                                    width: 60,
                                    height: 60,
                                  ),
                                  Spacer(),
                                  const Icon(Icons.cast, color: Colors.white),
                                  Kwidth,
                                  Container(
                                    color: Colors.blue,
                                    height: 30,
                                    width: 25,
                                  ),
                                  Kwidth,
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Tv Shows", style: KHomeTitleText),
                                  Text("Movies", style: KHomeTitleText),
                                  Text("Categories", style: KHomeTitleText),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : KHeight,
              ],
            ),
          );
        },
      ),
    );
  }
}
