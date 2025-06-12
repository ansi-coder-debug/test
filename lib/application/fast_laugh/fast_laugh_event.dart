part of 'fast_laugh_bloc.dart';

@freezed
abstract class FastLaughEvent with _$FastLaughEvent {
  const factory FastLaughEvent.initialize() = _Initialize;

  factory FastLaughEvent.likeVideo({required int id}) = LikeVideo;
  factory FastLaughEvent.unlikeVideo({required int id}) = UnlikeVideo;
}
