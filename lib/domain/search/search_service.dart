import 'package:dartz/dartz.dart';
import 'package:test/domain/core/failures/main_failure.dart';
import 'package:test/domain/search/models/search_response/search_response.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResponse>> searchMovies({
    required String movieQuery,
  });
}
