import 'package:flutter/material.dart';
import 'package:weather_app_techidaara/ui/screens/city_selection_screen.dart';
import 'package:weather_app_techidaara/ui/screens/landing_screen.dart';
import 'package:weather_app_techidaara/ui/screens/splash_screen.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case LandingScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LandingScreen());

      case CitySelectionScreen.routeName:
        return MaterialPageRoute(builder: (_) => const CitySelectionScreen());

      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
