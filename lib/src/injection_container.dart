
import 'package:foa/src/core/data/datasources/load_data.datasource.dart';
import 'package:foa/src/core/data/datasources/local/storage.helper.dart';
import 'package:foa/src/core/data/repositories/load_data.repository.impl.dart';
import 'package:foa/src/core/domain/usecases/load_data.usecase.dart';
import 'package:foa/src/core/provider/load_data.provider.dart';
import 'package:foa/src/core/provider/theme.provider.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);


  ///! Features - result ---------------------------------------------->
  /// ------------------------------------------------------------------------->
  // Provider
  sl.registerLazySingleton(() => LoadDataProvider());

  // Use Case
  sl.registerLazySingleton(() => LoadDataUsecase(sl()));

  // Repository
  sl.registerLazySingleton<LoadDataRepositoryImpl>(
          () => LoadDataRepositoryImpl(dataSource: sl()));

  // Data sources
  sl.registerLazySingleton<LoadDataSourceImpl>(() => LoadDataSourceImpl());

  ///! Features - Client Connection-------------------------------------------->
  /// ------------------------------------------------------------------------->

  // Device specific datasources
  sl.registerLazySingleton(() => StorageHelper());

  // Device specific Providers
  sl.registerLazySingleton(() => ThemeProvider(cacheManager: sl()));

}