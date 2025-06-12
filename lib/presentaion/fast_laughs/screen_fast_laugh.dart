import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:test/presentaion/fast_laughs/widget/video_list_item.dart';

class FastLaugh extends StatelessWidget {
  const FastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(
        context,
      ).add(const FastLaughEvent.initialize());
    });

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              );
            } else if (state.isError) {
              return const Center(child: Text('no internet connection'));
            } else if (state.videoList.isEmpty) {
              return const Center(child: Text('video lidt is empty'));
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(state.videoList.length, (index) {
                  return videoListItemInheritedWidget(
                    widget:VideoListItem(
                      key:Key(index.toString()),
                      index: index) ,
                     movieData: state.videoList[index]
                     );
                }),
              );
            }
          },
        ),
      ),
    );
  }
}
