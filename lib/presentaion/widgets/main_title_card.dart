import 'package:flutter/material.dart';
import 'package:test/core/constant.dart';
import 'package:test/presentaion/widgets/main_card.dart';
import 'package:test/presentaion/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  final String title;

  const MainTitleCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainTitle(title: title),
        KHeight,

        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => MainCard()),
          ),
        ),
      ],
    );
  }
}
