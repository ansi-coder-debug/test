import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/application/home/home_bloc.dart';
import 'package:test/core/constant.dart';
import 'package:test/presentaion/home/widget/background_card.dart';
import 'package:test/presentaion/home/widget/custom_button_widget.dart';
import 'package:test/presentaion/home/widget/number_title_card.dart';
import 'package:test/presentaion/login/login_screen.dart';
import 'package:test/presentaion/widgets/main_card.dart';
import 'package:test/presentaion/widgets/main_title.dart';
import 'package:test/presentaion/widgets/main_title_card.dart';
import 'package:flutter/material.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const GetHomeScreenData());
    });

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
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      );
                    } else if (state.hasError) {
                      return const Center(
                        child: Text(
                          'Error while getting the data',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }
                    //released past year

                    // final _releasedPastYear = state.pastYearMovieList.map((m) {
                    //   return '$imageAppendUrl${m.posterPath}';
                    // }).toList();

                    // //trending now

                    // final _trendingNow = state.trendingMovieList.map((m) {
                    //   return '$imageAppendUrl${m.posterPath}';
                    // }).toList();

                    // //tense dramas
                    // final _tenseDramas = state.tenseDramaMovieList.map((m) {
                    //   return '$imageAppendUrl${m.posterPath}';
                    // }).toList();

                    // // south indian movies
                    // final _southIndianMovies = state.southIndianMovieList.map((
                    //   m,
                    // ) {
                    //   return '$imageAppendUrl${m.posterPath}';
                    // }).toList();
                    // _southIndianMovies.shuffle();

                    // top 10 tv shows

                    final _top10TvShow = state.trendingTvList.map((t) {
                      return '$imageAppendUrl${t.posterPath}';
                    }).toList();
                    _top10TvShow.shuffle();

                    return ListView(
                      children: [
                        BackgroundCard(),
                        MainTitleCard(
                          title: "Released in the past year",
                          posterList: state.pastYearMovieList,
                        ),
                        KHeight,
                        MainTitleCard(
                          title: "Trending now",
                          posterList: state.trendingMovieList,
                        ),
                        KHeight,
                        NumberTitleCard(posterList: _top10TvShow.sublist(0, 9)),
                        KHeight,
                        MainTitleCard(
                          title: "Tense Dramas",
                          posterList: state.tenseDramaMovieList,
                        ),
                        KHeight,
                        MainTitleCard(
                          title: "South Indian Cinema",
                          posterList: state.southIndianMovieList,
                        ),
                      ],
                    );
                  },
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
                                               //this blue container
                                                 // Container(
                                           //   color: Colors.blue,
                                         //   height: 30,
                                      //   width: 25,
                                  // ),
                                  IconButton(
                                    onPressed: () {
                                      signout(context);
                                    },
                                    icon: Icon(
                                      Icons.exit_to_app,
                                      color: Colors.white,
                                    ),
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

  signout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
      MaterialPageRoute(builder: (ctx1) => LoginScreen()),
      (route) => false,
    );
  }
}
