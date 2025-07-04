import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:test/domain/core/api_end_points.dart';
import 'package:test/domain/core/failures/main_failure.dart';
import 'package:test/domain/search/models/search_response/search_response.dart';
import 'package:test/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailure, SearchResponse>> searchMovies({
    required String movieQuery,
  }) async {
    try {
      final response = await Dio(
        BaseOptions(),
      ).get(ApiEndPoints.search, queryParameters: {'query': movieQuery});
      // log(response.data.toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
