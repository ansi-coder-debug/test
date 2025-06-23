import 'package:flutter/material.dart';
import 'package:test/core/constant.dart';
import 'package:test/presentaion/home/widget/number_card.dart';
import 'package:test/presentaion/widgets/main_title.dart';

class NumberTitleCard extends StatefulWidget {
  const NumberTitleCard({Key? key, required this.posterList});

  final List<String> posterList;

  @override
  State<NumberTitleCard> createState() => _NumberTitleCardState();
}

class _NumberTitleCardState extends State<NumberTitleCard> {
   List<String> _shuffledList=[];

  @override
  void initState() {
    super.initState();
    if (widget.posterList.isNotEmpty) {
      _shuffledList = [...widget.posterList]..shuffle();
    }
  }

  // @override
  // void didUpdateWidget(covariant NumberTitleCard oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   if (oldWidget.posterList != widget.posterList &&
  //       widget.posterList.isNotEmpty) {
  //     _shuffledList = [...widget.posterList]..shuffle();
  //   }
  // }

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

            children: List.generate(
              _shuffledList.length,
              (index) =>
                  NumberCard(index: index, imageUrl: _shuffledList[index]),
            ),
          ),
        ),
      ],
    );
  }
}
 