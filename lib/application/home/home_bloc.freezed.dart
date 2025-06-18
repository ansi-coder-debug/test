// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// @nodoc


class GetHomeScreenData implements HomeEvent {
  const GetHomeScreenData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHomeScreenData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getHomeScreenData()';
}


}




/// @nodoc
mixin _$HomeState {

 String get stateId; List<HotAndNewData> get pastYearMovieList; List<HotAndNewData> get trendingMovieList; List<HotAndNewData> get tenseDramaMovieList; List<HotAndNewData> get southIndianMovieList; List<HotAndNewData> get trendingTvList; bool get isLoading; bool get hasError;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.stateId, stateId) || other.stateId == stateId)&&const DeepCollectionEquality().equals(other.pastYearMovieList, pastYearMovieList)&&const DeepCollectionEquality().equals(other.trendingMovieList, trendingMovieList)&&const DeepCollectionEquality().equals(other.tenseDramaMovieList, tenseDramaMovieList)&&const DeepCollectionEquality().equals(other.southIndianMovieList, southIndianMovieList)&&const DeepCollectionEquality().equals(other.trendingTvList, trendingTvList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasError, hasError) || other.hasError == hasError));
}


@override
int get hashCode => Object.hash(runtimeType,stateId,const DeepCollectionEquality().hash(pastYearMovieList),const DeepCollectionEquality().hash(trendingMovieList),const DeepCollectionEquality().hash(tenseDramaMovieList),const DeepCollectionEquality().hash(southIndianMovieList),const DeepCollectionEquality().hash(trendingTvList),isLoading,hasError);

@override
String toString() {
  return 'HomeState(stateId: $stateId, pastYearMovieList: $pastYearMovieList, trendingMovieList: $trendingMovieList, tenseDramaMovieList: $tenseDramaMovieList, southIndianMovieList: $southIndianMovieList, trendingTvList: $trendingTvList, isLoading: $isLoading, hasError: $hasError)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 String stateId, List<HotAndNewData> pastYearMovieList, List<HotAndNewData> trendingMovieList, List<HotAndNewData> tenseDramaMovieList, List<HotAndNewData> southIndianMovieList, List<HotAndNewData> trendingTvList, bool isLoading, bool hasError
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stateId = null,Object? pastYearMovieList = null,Object? trendingMovieList = null,Object? tenseDramaMovieList = null,Object? southIndianMovieList = null,Object? trendingTvList = null,Object? isLoading = null,Object? hasError = null,}) {
  return _then(_self.copyWith(
stateId: null == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as String,pastYearMovieList: null == pastYearMovieList ? _self.pastYearMovieList : pastYearMovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,trendingMovieList: null == trendingMovieList ? _self.trendingMovieList : trendingMovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,tenseDramaMovieList: null == tenseDramaMovieList ? _self.tenseDramaMovieList : tenseDramaMovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,southIndianMovieList: null == southIndianMovieList ? _self.southIndianMovieList : southIndianMovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,trendingTvList: null == trendingTvList ? _self.trendingTvList : trendingTvList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _Initial implements HomeState {
  const _Initial({required this.stateId, required final  List<HotAndNewData> pastYearMovieList, required final  List<HotAndNewData> trendingMovieList, required final  List<HotAndNewData> tenseDramaMovieList, required final  List<HotAndNewData> southIndianMovieList, required final  List<HotAndNewData> trendingTvList, required this.isLoading, required this.hasError}): _pastYearMovieList = pastYearMovieList,_trendingMovieList = trendingMovieList,_tenseDramaMovieList = tenseDramaMovieList,_southIndianMovieList = southIndianMovieList,_trendingTvList = trendingTvList;
  

@override final  String stateId;
 final  List<HotAndNewData> _pastYearMovieList;
@override List<HotAndNewData> get pastYearMovieList {
  if (_pastYearMovieList is EqualUnmodifiableListView) return _pastYearMovieList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pastYearMovieList);
}

 final  List<HotAndNewData> _trendingMovieList;
@override List<HotAndNewData> get trendingMovieList {
  if (_trendingMovieList is EqualUnmodifiableListView) return _trendingMovieList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trendingMovieList);
}

 final  List<HotAndNewData> _tenseDramaMovieList;
@override List<HotAndNewData> get tenseDramaMovieList {
  if (_tenseDramaMovieList is EqualUnmodifiableListView) return _tenseDramaMovieList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tenseDramaMovieList);
}

 final  List<HotAndNewData> _southIndianMovieList;
@override List<HotAndNewData> get southIndianMovieList {
  if (_southIndianMovieList is EqualUnmodifiableListView) return _southIndianMovieList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_southIndianMovieList);
}

 final  List<HotAndNewData> _trendingTvList;
@override List<HotAndNewData> get trendingTvList {
  if (_trendingTvList is EqualUnmodifiableListView) return _trendingTvList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trendingTvList);
}

@override final  bool isLoading;
@override final  bool hasError;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.stateId, stateId) || other.stateId == stateId)&&const DeepCollectionEquality().equals(other._pastYearMovieList, _pastYearMovieList)&&const DeepCollectionEquality().equals(other._trendingMovieList, _trendingMovieList)&&const DeepCollectionEquality().equals(other._tenseDramaMovieList, _tenseDramaMovieList)&&const DeepCollectionEquality().equals(other._southIndianMovieList, _southIndianMovieList)&&const DeepCollectionEquality().equals(other._trendingTvList, _trendingTvList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasError, hasError) || other.hasError == hasError));
}


@override
int get hashCode => Object.hash(runtimeType,stateId,const DeepCollectionEquality().hash(_pastYearMovieList),const DeepCollectionEquality().hash(_trendingMovieList),const DeepCollectionEquality().hash(_tenseDramaMovieList),const DeepCollectionEquality().hash(_southIndianMovieList),const DeepCollectionEquality().hash(_trendingTvList),isLoading,hasError);

@override
String toString() {
  return 'HomeState(stateId: $stateId, pastYearMovieList: $pastYearMovieList, trendingMovieList: $trendingMovieList, tenseDramaMovieList: $tenseDramaMovieList, southIndianMovieList: $southIndianMovieList, trendingTvList: $trendingTvList, isLoading: $isLoading, hasError: $hasError)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 String stateId, List<HotAndNewData> pastYearMovieList, List<HotAndNewData> trendingMovieList, List<HotAndNewData> tenseDramaMovieList, List<HotAndNewData> southIndianMovieList, List<HotAndNewData> trendingTvList, bool isLoading, bool hasError
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stateId = null,Object? pastYearMovieList = null,Object? trendingMovieList = null,Object? tenseDramaMovieList = null,Object? southIndianMovieList = null,Object? trendingTvList = null,Object? isLoading = null,Object? hasError = null,}) {
  return _then(_Initial(
stateId: null == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as String,pastYearMovieList: null == pastYearMovieList ? _self._pastYearMovieList : pastYearMovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,trendingMovieList: null == trendingMovieList ? _self._trendingMovieList : trendingMovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,tenseDramaMovieList: null == tenseDramaMovieList ? _self._tenseDramaMovieList : tenseDramaMovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,southIndianMovieList: null == southIndianMovieList ? _self._southIndianMovieList : southIndianMovieList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,trendingTvList: null == trendingTvList ? _self._trendingTvList : trendingTvList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
