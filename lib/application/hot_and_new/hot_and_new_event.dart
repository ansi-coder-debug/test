part of 'hot_and_new_bloc.dart';

@freezed
  abstract class HotAndNewEvent with _$HotAndNewEvent  {
   const factory HotAndNewEvent.loadDataInComingSoon() =
    LoadDataInComingSoon;
      const factory HotAndNewEvent.loadDataInEveryonesIsWatching()
      = LoadDataInEveryonesIsWatching;
}