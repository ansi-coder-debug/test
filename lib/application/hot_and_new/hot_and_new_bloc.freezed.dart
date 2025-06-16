// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_and_new_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HotAndNewEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HotAndNewEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HotAndNewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HotAndNewEvent()';
}


}

/// @nodoc
class $HotAndNewEventCopyWith<$Res>  {
$HotAndNewEventCopyWith(HotAndNewEvent _, $Res Function(HotAndNewEvent) __);
}


/// @nodoc


class LoadDataInComingSoon with DiagnosticableTreeMixin implements HotAndNewEvent {
  const LoadDataInComingSoon();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HotAndNewEvent.loadDataInComingSoon'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadDataInComingSoon);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HotAndNewEvent.loadDataInComingSoon()';
}


}




/// @nodoc


class LoadDataInEveryonesIsWatching with DiagnosticableTreeMixin implements HotAndNewEvent {
  const LoadDataInEveryonesIsWatching();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HotAndNewEvent.loadDataInEveryonesIsWatching'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadDataInEveryonesIsWatching);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HotAndNewEvent.loadDataInEveryonesIsWatching()';
}


}




/// @nodoc
mixin _$HotAndNewState implements DiagnosticableTreeMixin {

 List<HotAndNewData> get comingSoonList; List<HotAndNewData> get everyOneIsWatchingList; bool get isLoading; bool get hasError;
/// Create a copy of HotAndNewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HotAndNewStateCopyWith<HotAndNewState> get copyWith => _$HotAndNewStateCopyWithImpl<HotAndNewState>(this as HotAndNewState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HotAndNewState'))
    ..add(DiagnosticsProperty('comingSoonList', comingSoonList))..add(DiagnosticsProperty('everyOneIsWatchingList', everyOneIsWatchingList))..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('hasError', hasError));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HotAndNewState&&const DeepCollectionEquality().equals(other.comingSoonList, comingSoonList)&&const DeepCollectionEquality().equals(other.everyOneIsWatchingList, everyOneIsWatchingList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasError, hasError) || other.hasError == hasError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(comingSoonList),const DeepCollectionEquality().hash(everyOneIsWatchingList),isLoading,hasError);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HotAndNewState(comingSoonList: $comingSoonList, everyOneIsWatchingList: $everyOneIsWatchingList, isLoading: $isLoading, hasError: $hasError)';
}


}

/// @nodoc
abstract mixin class $HotAndNewStateCopyWith<$Res>  {
  factory $HotAndNewStateCopyWith(HotAndNewState value, $Res Function(HotAndNewState) _then) = _$HotAndNewStateCopyWithImpl;
@useResult
$Res call({
 List<HotAndNewData> comingSoonList, List<HotAndNewData> everyOneIsWatchingList, bool isLoading, bool hasError
});




}
/// @nodoc
class _$HotAndNewStateCopyWithImpl<$Res>
    implements $HotAndNewStateCopyWith<$Res> {
  _$HotAndNewStateCopyWithImpl(this._self, this._then);

  final HotAndNewState _self;
  final $Res Function(HotAndNewState) _then;

/// Create a copy of HotAndNewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comingSoonList = null,Object? everyOneIsWatchingList = null,Object? isLoading = null,Object? hasError = null,}) {
  return _then(_self.copyWith(
comingSoonList: null == comingSoonList ? _self.comingSoonList : comingSoonList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,everyOneIsWatchingList: null == everyOneIsWatchingList ? _self.everyOneIsWatchingList : everyOneIsWatchingList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _initial with DiagnosticableTreeMixin implements HotAndNewState {
  const _initial({required final  List<HotAndNewData> comingSoonList, required final  List<HotAndNewData> everyOneIsWatchingList, required this.isLoading, required this.hasError}): _comingSoonList = comingSoonList,_everyOneIsWatchingList = everyOneIsWatchingList;
  

 final  List<HotAndNewData> _comingSoonList;
@override List<HotAndNewData> get comingSoonList {
  if (_comingSoonList is EqualUnmodifiableListView) return _comingSoonList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comingSoonList);
}

 final  List<HotAndNewData> _everyOneIsWatchingList;
@override List<HotAndNewData> get everyOneIsWatchingList {
  if (_everyOneIsWatchingList is EqualUnmodifiableListView) return _everyOneIsWatchingList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_everyOneIsWatchingList);
}

@override final  bool isLoading;
@override final  bool hasError;

/// Create a copy of HotAndNewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$initialCopyWith<_initial> get copyWith => __$initialCopyWithImpl<_initial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HotAndNewState'))
    ..add(DiagnosticsProperty('comingSoonList', comingSoonList))..add(DiagnosticsProperty('everyOneIsWatchingList', everyOneIsWatchingList))..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('hasError', hasError));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _initial&&const DeepCollectionEquality().equals(other._comingSoonList, _comingSoonList)&&const DeepCollectionEquality().equals(other._everyOneIsWatchingList, _everyOneIsWatchingList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasError, hasError) || other.hasError == hasError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_comingSoonList),const DeepCollectionEquality().hash(_everyOneIsWatchingList),isLoading,hasError);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HotAndNewState(comingSoonList: $comingSoonList, everyOneIsWatchingList: $everyOneIsWatchingList, isLoading: $isLoading, hasError: $hasError)';
}


}

/// @nodoc
abstract mixin class _$initialCopyWith<$Res> implements $HotAndNewStateCopyWith<$Res> {
  factory _$initialCopyWith(_initial value, $Res Function(_initial) _then) = __$initialCopyWithImpl;
@override @useResult
$Res call({
 List<HotAndNewData> comingSoonList, List<HotAndNewData> everyOneIsWatchingList, bool isLoading, bool hasError
});




}
/// @nodoc
class __$initialCopyWithImpl<$Res>
    implements _$initialCopyWith<$Res> {
  __$initialCopyWithImpl(this._self, this._then);

  final _initial _self;
  final $Res Function(_initial) _then;

/// Create a copy of HotAndNewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comingSoonList = null,Object? everyOneIsWatchingList = null,Object? isLoading = null,Object? hasError = null,}) {
  return _then(_initial(
comingSoonList: null == comingSoonList ? _self._comingSoonList : comingSoonList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,everyOneIsWatchingList: null == everyOneIsWatchingList ? _self._everyOneIsWatchingList : everyOneIsWatchingList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
