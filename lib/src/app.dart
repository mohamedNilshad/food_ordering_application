
import 'package:foa/src/core/presentation/base.view.dart';
import 'package:foa/src/core/provider/theme.provider.dart';
import 'package:foa/src/core/router/route.constants.dart';
import 'package:foa/src/core/router/route.dart';
import 'package:foa/src/core/theme/theme.dart';
import 'package:foa/src/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foa/src/features/manu/presentation/providers/menu.provider.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    if (HelperFunctions.isDarkMode(context) && HelperFunctions.isAndroid()) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ));
    }

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MenuProvider>(create: (_) => MenuProvider()),
      ],
      child: BaseView<ThemeProvider>(
          onModelReady:(model) => model.themeMode,
          builder: (context, provider, child) =>
              Builder(
                builder: (BuildContext context) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    navigatorKey: App.navigatorKey,
                    title: 'Food Ordering Application',
                    theme: AppTheme.lightTheme,
                    darkTheme: AppTheme.darkTheme,
                    themeMode: provider.themeMode,
                    initialRoute: RouteConstants.splashScreen,
                    onGenerateRoute: AppRouter.onGenerateRoute,
                  );
                },
              )
      ),
    );
  }
}
