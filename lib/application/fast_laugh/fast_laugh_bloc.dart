import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test/domain/downloads/i_downloads_repo.dart';
import 'package:test/domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';
// part '../bloc/fast_laugh_bloc.freezed.dart';

final dummyVideoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
];

ValueNotifier<Set<int>> likedVideosNotifier = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(IDownloadsRepo _downloadService)
    : super(FastLaughState.initial()) {
    on<_Initialize>((event, emit) async {
      //sending loading to ui
      emit(FastLaughState(videoList: [], isLoading: true, isError: false));
      //get trending movies

      final dummyList = List.generate(
        10,
        (index) => Downloads(
          posterPath: '/t/p/w500/8YFL5QQVPy3AgrEQxNYVSgiPEbe.jpg',
          title: 'Dummy Movie $index',
          videoUrl: dummyVideoUrls[index % dummyVideoUrls.length],
        ),
      );

      // Send directly to UI
      emit(
        FastLaughState(videoList: dummyList,
         isLoading: false,
          isError: false),
      );
    });

    on<LikeVideo>((event, emit) async {
      likedVideosNotifier.value.add(event.id);
      likedVideosNotifier.notifyListeners();
    });

    on<UnlikeVideo>((event, emit) async {
      likedVideosNotifier.value.remove(event.id);
      likedVideosNotifier.notifyListeners();
    });
  }
}  