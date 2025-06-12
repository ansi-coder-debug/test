import 'package:flutter/material.dart';
import 'package:test/core/constant.dart';
import 'package:test/presentaion/home/widget/number_card.dart';
import 'package:test/presentaion/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MainTitle(title: "top 10 tv shows in india today "),
        KHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => NumberCard(index: index)),
          ),
        ),
      ],
    );
  }
}
