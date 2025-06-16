import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/application/hot_and_new/hot_and_new_bloc.dart';
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
          children: [
            const ComingSoonList(
              key: Key('coming_soon'),
            ), //10:04 part 53 continue from here
            _buildEveryonesWatching(),
          ],
        ),
      ),
    );
  }
  // Widget _buildComingSoon() {
  //   return ListView.builder(
  //     itemCount: 10,
  //     itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
  //   );
  // }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) => SizedBox(),
      // const EveryonesWatchingWidget(),
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInComingSoon());
    });

    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator(strokeWidth: 2));
        } else if (state.hasError) {
          return Center(
            child: Text('error while loading the coming soon list '),
          );
        } else if (state.comingSoonList.isEmpty) {
          return Center(child: Text('coming soon list is empty'));
        } else {}

        return ListView.builder(
          itemCount: state.comingSoonList.length,
          itemBuilder: (BuildContext context, index) {
            final movie = state.comingSoonList[index];
            if (movie.id == null) {
              return const SizedBox();
            }
            return ComingSoonWidget(
              id: movie.id.toString(),
              month: 'mar',
              day: '11',
              posterPath: '$imageAppendUrl${movie.posterPath}',
              movieName: movie.originalTitle ?? 'No title',
              description: movie.overview ?? 'No description',
            );
          },
        );
      },
    );
  }
}
