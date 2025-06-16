// import 'package:flutter/material.dart';
import 'package:test/core/strings.dart';
import 'package:test/domain/hot_and_new_response/model/hot_and_new_response.dart';
import 'package:test/infrastructure/api_key.dart';
// import 'package:dio/dio.dart';
// claud ai

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/movie/day?api_key=$apiKey";
  static const search =
      '$kBaseUrl/search/movie?include_adult=false&language=en-US&page=1&api_key=$apiKey';

  static const hotAndNewMovie =
      '$kBaseUrl/discover/movie?api_key=$apiKey';

      static const hotAndNewTv =
      '$kBaseUrl/discover/tv?api_key=$apiKey';
}
