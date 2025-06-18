// import 'package:flutter/material.dart';
// import 'package:test/core/constant.dart';
// import 'package:test/domain/hot_and_new_response/model/hot_and_new_response.dart';
// import 'package:test/presentaion/widgets/main_card.dart';
// import 'package:test/presentaion/widgets/main_title.dart';

// class MainTitleCard extends StatelessWidget {
//   const MainTitleCard({
//     super.key,
//     required this.title,
//     required this.posterList,
//   });
//   final String title;
//   final List<HotAndNewData> posterList;

//   @override
//   Widget build(BuildContext context) {
//     final shuffledList = [...posterList]..shuffle();

//     final testList = shuffledList
//         .map((m) {
//           return '$imageAppendUrl${m.posterPath}';
//         })
//         .toList()
//         .sublist(0, 9);
//     return Column(
//       children: [
//         MainTitle(title: title),
//         KHeight,

//         LimitedBox(
//           maxHeight: 200,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: List.generate(
//               testList.length,
//               (index) => MainCard(imageUrl: testList[index]),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// } 



import 'package:flutter/material.dart';
import 'package:test/core/constant.dart';
import 'package:test/domain/hot_and_new_response/model/hot_and_new_response.dart';
import 'package:test/presentaion/widgets/main_card.dart';
import 'package:test/presentaion/widgets/main_title.dart';

class MainTitleCard extends StatefulWidget {
  const MainTitleCard({
    super.key,
    required this.title,
    required this.posterList,
  });

  final String title;
  final List<HotAndNewData> posterList;

  @override
  State<MainTitleCard> createState() => _MainTitleCardState();
}

class _MainTitleCardState extends State<MainTitleCard> {
  late final List<String> testList;

  @override
  void initState() {
    super.initState();

    final shuffledList = [...widget.posterList]..shuffle();

    testList = shuffledList
        .map((m) => '$imageAppendUrl${m.posterPath}')
        .toList()
        .sublist(0, shuffledList.length >= 9 ? 9 : shuffledList.length);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainTitle(title: widget.title),
        KHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              testList.length,
              (index) => MainCard(imageUrl: testList[index]),
            ),
          ),
        ),
      ],
    );
  }
}

