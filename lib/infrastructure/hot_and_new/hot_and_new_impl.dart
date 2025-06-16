
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
// import 'package:injectable/injectable.dart';
import 'package:test/domain/core/api_end_points.dart';
import 'package:test/domain/core/failures/main_failure.dart';
import 'package:test/domain/hot_and_new_response/hot_and_new_service.dart';
import 'package:test/domain/hot_and_new_response/model/hot_and_new_response.dart';


 @LazySingleton(as:HotAndNewService)

class HotAndNewImplementation implements HotAndNewService {
  @override
  Future<Either<MainFailure, HotAndNewResponse>> getHotAndNewMovieData() async {
    try {
      final response = await Dio(
        BaseOptions(),
      ).get(ApiEndPoints.hotAndNewMovie);
      // log(response.data.toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on DioException catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HotAndNewResponse>> getHotAndNewTvData() async {
    try {
      final response = await Dio(
        BaseOptions(),
      ).get(ApiEndPoints.hotAndNewTv);
      // log(response.data.toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on DioException catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
