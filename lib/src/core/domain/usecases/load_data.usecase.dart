import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/menu/menu.entity.dart';
import 'package:foa/src/core/domain/usecases/usecase.dart';
import 'package:foa/src/core/error/failures.dart';

// class LoadDataUsecase implements UseCase<List<Menu>, Params> {
//   final CourseRepositoryImpl _repository;
//
//   LoadDataUsecase(this._repository);
//
//   @override
//   Future<Either<Failure, List<Menu>>> call(Params params) async =>
//       await _repository.getAllCourses(params.baseUrl, params.token, params.limit, params.page);
// }

class Params extends Equatable {
  final String baseUrl;
  final String token;
  final int limit;
  final int page;

  const Params({
    required this.baseUrl,
    required this.token,
    required this.limit,
    required this.page,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [baseUrl];

}