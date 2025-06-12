import 'package:flutter/material.dart';
import 'package:test/core/app_styles.dart';
import 'package:test/core/colors/colors.dart';
import 'package:test/core/constant.dart';
import 'package:test/presentaion/home/widget/custom_button_widget.dart';
import 'package:test/presentaion/widgets/app_bar_widget.dart';
import 'package:test/presentaion/widgets/video_widget.dart';

import 'widgets/coming_soon_widget.dart';
import 'widgets/everyone_watching_widget.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: Text(
              "New & Hot",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            actions: [
              const Icon(Icons.cast, color: Colors.white),
              Kwidth,
              Container(color: Colors.white, height: 25, width: 25),
              Kwidth,
            ],
            bottom: TabBar(
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(horizontal: 25),
              unselectedLabelColor: AppStyles.CWhitecolor,
              labelColor: AppStyles.CBlackcolor,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              indicator: BoxDecoration(
                color: Kwhitecolor,
                borderRadius: AppStyles.borderRadius30,
              ),
              tabs: const [
                Tab(text: "🍿 Coming Soon"),
                Tab(text: "👀 Everyone's watching"),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [_buildComingSoon(), _buildEveryonesWatching()],
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
    );
  }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) =>
          const EveryonesWatchingWidget(),
    );
  }
}
