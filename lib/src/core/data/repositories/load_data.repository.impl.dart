import 'package:dartz/dartz.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/data/datasources/load_data.datasource.dart';
import 'package:foa/src/core/domain/entities/result.entity.dart';
import 'package:foa/src/core/domain/repositories/load_data.repository.dart';
import 'package:foa/src/core/error/exception.dart';
import 'package:foa/src/core/error/failures.dart';

class LoadDataRepositoryImpl implements LoadDataRepository {
  final LoadDataSourceImpl dataSource;

  LoadDataRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, Result>> getData() async {
    try {
      return Right(await dataSource.loadAllData());
    } on RequestException catch (e) {
      return Left(AppFailure(e.message));
    } on ServerException {
      return const Left(ServerFailure(AppStrings.serverUnrecognisedError));
    } on InternetConnectionException catch (e) {
      return Left(ConnectionFailure(e.message));
    } on TimeoutConnectionException catch (e) {
      return Left(TimeoutFailure(e.message));
    } on AccountDeactivatedException catch (e) {
      return Left(AccountDeactivatedFailure(e.message));
    } on UnAuthorizedException catch (e) {
      return Left(UnAuthorizedFailure(e.message));
    } on FailureException catch (e) {
      return Left(AppFailure(e.message));
    } catch (e) {
      return const Left(AppFailure("Something went wrong, please try again!"));
    }

  }
}
