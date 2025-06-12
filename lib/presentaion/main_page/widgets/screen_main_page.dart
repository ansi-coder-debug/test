import 'package:flutter/material.dart';
import 'package:test/presentaion/downloads/widgets/screen_downloads.dart';
import 'package:test/presentaion/fast_laughs/screen_fast_laugh.dart';
import 'package:test/presentaion/home/screen_home.dart';
import 'package:test/presentaion/main_page/widgets/bottom_nav.dart';
import 'package:test/presentaion/new_and_hot/new_and_hot.dart';
import 'package:test/presentaion/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    ScreenHome(),
    NewAndHot(),
    // FastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
