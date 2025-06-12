import 'package:dartz/dartz.dart';
import 'package:test/domain/core/failures/main_failure.dart';
import 'package:test/domain/downloads/models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
