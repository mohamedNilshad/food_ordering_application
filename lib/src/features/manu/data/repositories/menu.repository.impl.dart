import 'package:dartz/dartz.dart';
import 'package:foa/src/core/constants/app_strings.dart';
import 'package:foa/src/core/domain/entities/menu/menu.entity.dart';
import 'package:foa/src/core/error/exception.dart';
import 'package:foa/src/core/error/failures.dart';
import 'package:foa/src/features/manu/data/datasources/menu.datasource.dart';
import 'package:foa/src/features/manu/domain/repositories/menu.repository.dart';

class MenuRepositoryImpl implements MenuRepository {
  final MenuDataSourceImpl dataSource;

  MenuRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, List<Menu>>> getAllMenu() async {
    try {
      return Right(await dataSource.getAllMenu());
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
      return const Left(AppFailure("Login failed, please try again!"));
    }

  }
}
