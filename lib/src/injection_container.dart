
import 'package:foa/src/core/data/datasources/local/storage.helper.dart';
import 'package:foa/src/core/provider/theme.provider.dart';
import 'package:foa/src/features/manu/presentation/providers/menu.provider.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);



  ///! Features - menu ---------------------------------------------->
  /// ------------------------------------------------------------------------->
  // Provider
  sl.registerLazySingleton(() => MenuProvider());



  ///! Features - Client Connection-------------------------------------------->
  /// ------------------------------------------------------------------------->

  // Device specific datasources
  sl.registerLazySingleton(() => StorageHelper());

  // Device specific Providers
  sl.registerLazySingleton(() => ThemeProvider(cacheManager: sl()));

}