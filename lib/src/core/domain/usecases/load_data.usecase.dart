import 'package:dartz/dartz.dart';
import 'package:foa/src/core/data/repositories/load_data.repository.impl.dart';
import 'package:foa/src/core/domain/entities/result.entity.dart';
import 'package:foa/src/core/domain/usecases/usecase.dart';
import 'package:foa/src/core/error/failures.dart';

class LoadDataUsecase implements UseCase<Result, NoParams> {
  final LoadDataRepositoryImpl _repository;

  LoadDataUsecase(this._repository);

  @override
  Future<Either<Failure, Result>> call(NoParams params) async =>
      await _repository.getData();
}
