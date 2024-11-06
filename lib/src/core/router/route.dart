import 'package:foa/src/core/presentation/screens/splash.screen.dart';
import 'package:foa/src/core/presentation/screens/unknown.screen.dart';
import 'package:flutter/material.dart';
import 'package:foa/src/core/router/route.constants.dart';
import 'package:foa/src/features/manu/presentation/screens/menu.screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    debugPrint("Navigating to ${settings.name}");
    switch (settings.name) {
      case RouteConstants.splashScreen:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RouteConstants.splashScreen),
          builder: (context) {
            return const SplashScreen();
          },
        );

      case RouteConstants.menuScreen:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RouteConstants.menuScreen),
          builder: (context) {
            return const HomeScreen();
          },
        );
    }

    assert(false, 'Need to implement ${settings.name}');
    return MaterialPageRoute(builder: (_) => const UnknownScreen());
  }
}

class MenuSlideUpRoute<T> extends MaterialPageRoute<T> {
  MenuSlideUpRoute(
      {required super.builder, required RouteSettings super.settings});

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(animation),
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}
