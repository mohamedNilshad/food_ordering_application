import 'package:dartz/dartz.dart';
import 'package:foa/src/core/domain/entities/menu/menu.entity.dart';
import 'package:foa/src/core/domain/usecases/usecase.dart';
import 'package:foa/src/core/error/failures.dart';
import 'package:foa/src/features/manu/data/repositories/menu.repository.impl.dart';

class LoadMenuUsecase implements UseCase<List<Menu>, NoParams> {
  final MenuRepositoryImpl _repository;

  LoadMenuUsecase(this._repository);

  @override
  Future<Either<Failure, List<Menu>>> call(NoParams params) async =>
      await _repository.getAllMenu();
}

