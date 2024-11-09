import 'package:dartz/dartz.dart';
import 'package:foa/src/core/error/failures.dart';
import 'package:foa/src/core/domain/entities/menu/menu.entity.dart';

abstract class MenuRepository {
  Future<Either<Failure, List<Menu>>> getAllMenu();
}