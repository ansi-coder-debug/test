// import 'dart:developer';

// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

// import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:test/domain/core/api_end_points.dart';
import 'package:test/domain/core/failures/main_failure.dart';
import 'package:test/domain/downloads/i_downloads_repo.dart';
import 'package:test/domain/downloads/models/downloads.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(
            BaseOptions(
              connectTimeout: Duration(seconds: 10), // 10 seconds
              receiveTimeout: Duration(seconds: 10),
            ),
          ).get(
            ApiEndPoints.downloads,
            // options: Options(
            //   headers: {
            //     'User-Agent':
            //         'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', // Chrome User-Agent
            //   },
            // ),
          );

      if (response.statusCode == 200 || response.statusCode == 201) {
         
        final downloadList = (response.data['result'] as List).map((e) {
          return (Downloads.fromJson(e));
        }).toList();
      
      print(downloadList);
        return Right(downloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
