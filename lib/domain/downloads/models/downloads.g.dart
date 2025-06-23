// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Downloads _$DownloadsFromJson(Map<String, dynamic> json) => _Downloads(
  posterPath: json['posterPath'] as String?,
  title: json['title'] as String?,
  videoUrl: json['videoUrl'] as String? ?? null,
);

Map<String, dynamic> _$DownloadsToJson(_Downloads instance) =>
    <String, dynamic>{
      'posterPath': instance.posterPath,
      'title': instance.title,
      'videoUrl': instance.videoUrl,
    };
