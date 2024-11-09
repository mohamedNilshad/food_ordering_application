import 'package:dartz/dartz.dart';
import 'package:foa/src/core/domain/entities/result.entity.dart';
import 'package:foa/src/core/error/failures.dart';

abstract class LoadDataRepository {
  Future<Either<Failure, Result>> getData();
}