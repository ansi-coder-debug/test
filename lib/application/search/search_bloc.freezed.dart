// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// @nodoc


class _Initialize implements SearchEvent {
  const _Initialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.initialize()';
}


}




/// @nodoc


class _SearchMovie implements SearchEvent {
  const _SearchMovie({required this.movieQuery});
  

 final  String movieQuery;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchMovieCopyWith<_SearchMovie> get copyWith => __$SearchMovieCopyWithImpl<_SearchMovie>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchMovie&&(identical(other.movieQuery, movieQuery) || other.movieQuery == movieQuery));
}


@override
int get hashCode => Object.hash(runtimeType,movieQuery);

@override
String toString() {
  return 'SearchEvent.searchMovie(movieQuery: $movieQuery)';
}


}

/// @nodoc
abstract mixin class _$SearchMovieCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory _$SearchMovieCopyWith(_SearchMovie value, $Res Function(_SearchMovie) _then) = __$SearchMovieCopyWithImpl;
@useResult
$Res call({
 String movieQuery
});




}
/// @nodoc
class __$SearchMovieCopyWithImpl<$Res>
    implements _$SearchMovieCopyWith<$Res> {
  __$SearchMovieCopyWithImpl(this._self, this._then);

  final _SearchMovie _self;
  final $Res Function(_SearchMovie) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieQuery = null,}) {
  return _then(_SearchMovie(
movieQuery: null == movieQuery ? _self.movieQuery : movieQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SearchState {

 List<SearchResultData> get searchResultList; List<Downloads> get idleList; bool get isLoading; bool get isError;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&const DeepCollectionEquality().equals(other.searchResultList, searchResultList)&&const DeepCollectionEquality().equals(other.idleList, idleList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(searchResultList),const DeepCollectionEquality().hash(idleList),isLoading,isError);

@override
String toString() {
  return 'SearchState(searchResultList: $searchResultList, idleList: $idleList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 List<SearchResultData> searchResultList, List<Downloads> idleList, bool isLoading, bool isError
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchResultList = null,Object? idleList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
searchResultList: null == searchResultList ? _self.searchResultList : searchResultList // ignore: cast_nullable_to_non_nullable
as List<SearchResultData>,idleList: null == idleList ? _self.idleList : idleList // ignore: cast_nullable_to_non_nullable
as List<Downloads>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({required final  List<SearchResultData> searchResultList, required final  List<Downloads> idleList, required this.isLoading, required this.isError}): _searchResultList = searchResultList,_idleList = idleList;
  

 final  List<SearchResultData> _searchResultList;
@override List<SearchResultData> get searchResultList {
  if (_searchResultList is EqualUnmodifiableListView) return _searchResultList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResultList);
}

 final  List<Downloads> _idleList;
@override List<Downloads> get idleList {
  if (_idleList is EqualUnmodifiableListView) return _idleList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_idleList);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&const DeepCollectionEquality().equals(other._searchResultList, _searchResultList)&&const DeepCollectionEquality().equals(other._idleList, _idleList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_searchResultList),const DeepCollectionEquality().hash(_idleList),isLoading,isError);

@override
String toString() {
  return 'SearchState(searchResultList: $searchResultList, idleList: $idleList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 List<SearchResultData> searchResultList, List<Downloads> idleList, bool isLoading, bool isError
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchResultList = null,Object? idleList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_SearchState(
searchResultList: null == searchResultList ? _self._searchResultList : searchResultList // ignore: cast_nullable_to_non_nullable
as List<SearchResultData>,idleList: null == idleList ? _self._idleList : idleList // ignore: cast_nullable_to_non_nullable
as List<Downloads>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
