// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FastLaughEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FastLaughEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FastLaughEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FastLaughEvent()';
}


}

/// @nodoc
class $FastLaughEventCopyWith<$Res>  {
$FastLaughEventCopyWith(FastLaughEvent _, $Res Function(FastLaughEvent) __);
}


/// @nodoc


class _Initialize with DiagnosticableTreeMixin implements FastLaughEvent {
  const _Initialize();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FastLaughEvent.initialize'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FastLaughEvent.initialize()';
}


}




/// @nodoc


class LikeVideo with DiagnosticableTreeMixin implements FastLaughEvent {
   LikeVideo({required this.id});
  

 final  int id;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeVideoCopyWith<LikeVideo> get copyWith => _$LikeVideoCopyWithImpl<LikeVideo>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FastLaughEvent.likeVideo'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeVideo&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FastLaughEvent.likeVideo(id: $id)';
}


}

/// @nodoc
abstract mixin class $LikeVideoCopyWith<$Res> implements $FastLaughEventCopyWith<$Res> {
  factory $LikeVideoCopyWith(LikeVideo value, $Res Function(LikeVideo) _then) = _$LikeVideoCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$LikeVideoCopyWithImpl<$Res>
    implements $LikeVideoCopyWith<$Res> {
  _$LikeVideoCopyWithImpl(this._self, this._then);

  final LikeVideo _self;
  final $Res Function(LikeVideo) _then;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(LikeVideo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UnlikeVideo with DiagnosticableTreeMixin implements FastLaughEvent {
   UnlikeVideo({required this.id});
  

 final  int id;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnlikeVideoCopyWith<UnlikeVideo> get copyWith => _$UnlikeVideoCopyWithImpl<UnlikeVideo>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FastLaughEvent.unlikeVideo'))
    ..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnlikeVideo&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FastLaughEvent.unlikeVideo(id: $id)';
}


}

/// @nodoc
abstract mixin class $UnlikeVideoCopyWith<$Res> implements $FastLaughEventCopyWith<$Res> {
  factory $UnlikeVideoCopyWith(UnlikeVideo value, $Res Function(UnlikeVideo) _then) = _$UnlikeVideoCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$UnlikeVideoCopyWithImpl<$Res>
    implements $UnlikeVideoCopyWith<$Res> {
  _$UnlikeVideoCopyWithImpl(this._self, this._then);

  final UnlikeVideo _self;
  final $Res Function(UnlikeVideo) _then;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(UnlikeVideo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$FastLaughState implements DiagnosticableTreeMixin {

 List<Downloads> get videoList; bool get isLoading; bool get isError;
/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FastLaughStateCopyWith<FastLaughState> get copyWith => _$FastLaughStateCopyWithImpl<FastLaughState>(this as FastLaughState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FastLaughState'))
    ..add(DiagnosticsProperty('videoList', videoList))..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('isError', isError));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FastLaughState&&const DeepCollectionEquality().equals(other.videoList, videoList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(videoList),isLoading,isError);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FastLaughState(videoList: $videoList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $FastLaughStateCopyWith<$Res>  {
  factory $FastLaughStateCopyWith(FastLaughState value, $Res Function(FastLaughState) _then) = _$FastLaughStateCopyWithImpl;
@useResult
$Res call({
 List<Downloads> videoList, bool isLoading, bool isError
});




}
/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._self, this._then);

  final FastLaughState _self;
  final $Res Function(FastLaughState) _then;

/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? videoList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
videoList: null == videoList ? _self.videoList : videoList // ignore: cast_nullable_to_non_nullable
as List<Downloads>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _Initial with DiagnosticableTreeMixin implements FastLaughState {
  const _Initial({required final  List<Downloads> videoList, required this.isLoading, required this.isError}): _videoList = videoList;
  

 final  List<Downloads> _videoList;
@override List<Downloads> get videoList {
  if (_videoList is EqualUnmodifiableListView) return _videoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoList);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FastLaughState'))
    ..add(DiagnosticsProperty('videoList', videoList))..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('isError', isError));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._videoList, _videoList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_videoList),isLoading,isError);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FastLaughState(videoList: $videoList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $FastLaughStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<Downloads> videoList, bool isLoading, bool isError
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? videoList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_Initial(
videoList: null == videoList ? _self._videoList : videoList // ignore: cast_nullable_to_non_nullable
as List<Downloads>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
