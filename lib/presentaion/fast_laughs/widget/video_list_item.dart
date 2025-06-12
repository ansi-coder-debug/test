// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';
import 'dart:developer';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import 'package:flutter/material.dart';
import 'package:test/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:test/core/colors/colors.dart';
import 'package:test/core/constant.dart';
import 'package:test/domain/downloads/models/downloads.dart';
import 'package:video_player/video_player.dart';

class videoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const videoListItemInheritedWidget({
    Key? Key,
    required this.widget,
    required this.movieData,
  }) : super(key: Key, child: widget);

  @override
  bool updateShouldNotify(covariant videoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static videoListItemInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }
}

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final posterPath = videoListItemInheritedWidget
        .of(context)
        ?.movieData
        .posterPath;
    final videoUrl = dummyVideoUrls[index % dummyVideoUrls.length];
    return Stack(
      children: [
        FastLaugVideoPlayer(videoUrl: videoUrl, onStateChanged: (bool) {}),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // left side ui
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      color: Kwhitecolor,
                      size: 30,
                    ),
                  ),
                ),
                //  right side ui
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: posterPath == null
                              ? null
                              : CachedNetworkImageProvider(
                                  '$imageAppendUrl$posterPath',
                                ),

                          // 'https://upload.wikimedia.org/wikipedia/en/1/1c/The_Dark_Knight_%282008_film%29.jpg',
                        ),
                      ),
                      KHeight,
                      ValueListenableBuilder(
                        valueListenable: likedVideosNotifier,

                        builder:
                            (
                              BuildContext c,
                              Set<int> newLikedListIds,
                              Widget? _,
                            ) {
                              final _index = index;
                              if (newLikedListIds.contains(_index)) {
                                return GestureDetector(
                                  onTap: () {
                                    // BlocProvider.of<FastLaughBloc>(
                                    //   context,
                                    // ).add(UnlikeVideo(id: _index));
                                    likedVideosNotifier.value.remove(_index);
                                  },
                                  child: const VideoActionWidget(
                                    icon: Icons.favorite,
                                    title: 'Liked',
                                  ),
                                );
                              }
                              return GestureDetector(
                                onTap: () {
                                  // BlocProvider.of<FastLaughBloc>(
                                  //   context,
                                  // ).add(LikeVideo(id: _index));
                                  likedVideosNotifier.value.add(_index);
                                },
                                child: const VideoActionWidget(
                                  icon: Icons.emoji_emotions,
                                  title: 'LoL',
                                ),
                              );
                            },
                      ),
                      KHeight,
                      const VideoActionWidget(
                        icon: Icons.add,
                        title: 'My List',
                      ),
                      KHeight,
                      GestureDetector(
                        onTap: () {
                          final movieName = videoListItemInheritedWidget
                              .of(context)
                              ?.movieData
                              .posterPath;
                          // print(movieName.toString());
                          log(movieName.toString());
                          if (movieName != null) {
                            // ignore: deprecated_member_use
                            Share.share(movieName);
                          }
                        },
                        child: VideoActionWidget(
                          icon: Icons.share,
                          title: 'Share',
                        ),
                      ),
                      KHeight,
                      VideoActionWidget(icon: Icons.play_arrow, title: 'Play'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;

  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        Text(title, style: TextStyle(color: Kwhitecolor, fontSize: 16)),
      ],
    );
  }
}

class FastLaugVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaugVideoPlayer({
    Key? key,
    required this.videoUrl,
    required this.onStateChanged,
  }) : super(key: key);

  @override
  State<FastLaugVideoPlayer> createState() => _FastLaugVideoPlayerState();
}

class _FastLaugVideoPlayerState extends State<FastLaugVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    );
    _videoPlayerController.initialize().then((value) {
      setState(() {});
      _videoPlayerController.play();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(child: CircularProgressIndicator(strokeWidth: 2)),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
