part of 'hot_and_new_bloc.dart';

@freezed
abstract class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required  List<HotAndNewData> comingSoonList,
    required  List<HotAndNewData> everyOneIsWatchingList,
    required bool isLoading,
    required bool hasError,
  }) = _initial;

  factory HotAndNewState.initial() =>const HotAndNewState(
    comingSoonList: [],
    everyOneIsWatchingList: [],
    isLoading: false,
    hasError: false,
  );
}
