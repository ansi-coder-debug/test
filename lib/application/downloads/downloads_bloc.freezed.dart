// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent()';
}


}

/// @nodoc
class $DownloadsEventCopyWith<$Res>  {
$DownloadsEventCopyWith(DownloadsEvent _, $Res Function(DownloadsEvent) __);
}


/// @nodoc


class _GetDownloadsImage implements DownloadsEvent {
  const _GetDownloadsImage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDownloadsImage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent.getDownloadsImage()';
}


}




/// @nodoc
mixin _$DownloadsState {

 bool get isLoading; List<Downloads>? get downloads; Option<Either<MainFailure, List<Downloads>>> get downloadsFailureOrSuccessOption;
/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadsStateCopyWith<DownloadsState> get copyWith => _$DownloadsStateCopyWithImpl<DownloadsState>(this as DownloadsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.downloads, downloads)&&(identical(other.downloadsFailureOrSuccessOption, downloadsFailureOrSuccessOption) || other.downloadsFailureOrSuccessOption == downloadsFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(downloads),downloadsFailureOrSuccessOption);

@override
String toString() {
  return 'DownloadsState(isLoading: $isLoading, downloads: $downloads, downloadsFailureOrSuccessOption: $downloadsFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $DownloadsStateCopyWith<$Res>  {
  factory $DownloadsStateCopyWith(DownloadsState value, $Res Function(DownloadsState) _then) = _$DownloadsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<Downloads>? downloads, Option<Either<MainFailure, List<Downloads>>> downloadsFailureOrSuccessOption
});




}
/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._self, this._then);

  final DownloadsState _self;
  final $Res Function(DownloadsState) _then;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? downloads = freezed,Object? downloadsFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,downloads: freezed == downloads ? _self.downloads : downloads // ignore: cast_nullable_to_non_nullable
as List<Downloads>?,downloadsFailureOrSuccessOption: null == downloadsFailureOrSuccessOption ? _self.downloadsFailureOrSuccessOption : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<MainFailure, List<Downloads>>>,
  ));
}

}


/// @nodoc


class _DownloadState implements DownloadsState {
  const _DownloadState({required this.isLoading, required final  List<Downloads>? downloads, required this.downloadsFailureOrSuccessOption}): _downloads = downloads;
  

@override final  bool isLoading;
 final  List<Downloads>? _downloads;
@override List<Downloads>? get downloads {
  final value = _downloads;
  if (value == null) return null;
  if (_downloads is EqualUnmodifiableListView) return _downloads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Option<Either<MainFailure, List<Downloads>>> downloadsFailureOrSuccessOption;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadStateCopyWith<_DownloadState> get copyWith => __$DownloadStateCopyWithImpl<_DownloadState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._downloads, _downloads)&&(identical(other.downloadsFailureOrSuccessOption, downloadsFailureOrSuccessOption) || other.downloadsFailureOrSuccessOption == downloadsFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_downloads),downloadsFailureOrSuccessOption);

@override
String toString() {
  return 'DownloadsState(isLoading: $isLoading, downloads: $downloads, downloadsFailureOrSuccessOption: $downloadsFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$DownloadStateCopyWith<$Res> implements $DownloadsStateCopyWith<$Res> {
  factory _$DownloadStateCopyWith(_DownloadState value, $Res Function(_DownloadState) _then) = __$DownloadStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<Downloads>? downloads, Option<Either<MainFailure, List<Downloads>>> downloadsFailureOrSuccessOption
});




}
/// @nodoc
class __$DownloadStateCopyWithImpl<$Res>
    implements _$DownloadStateCopyWith<$Res> {
  __$DownloadStateCopyWithImpl(this._self, this._then);

  final _DownloadState _self;
  final $Res Function(_DownloadState) _then;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? downloads = freezed,Object? downloadsFailureOrSuccessOption = null,}) {
  return _then(_DownloadState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,downloads: freezed == downloads ? _self._downloads : downloads // ignore: cast_nullable_to_non_nullable
as List<Downloads>?,downloadsFailureOrSuccessOption: null == downloadsFailureOrSuccessOption ? _self.downloadsFailureOrSuccessOption : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<MainFailure, List<Downloads>>>,
  ));
}


}

// dart format on
