import 'package:flutter/material.dart';
import 'package:weather_app_techidaara/core/models/weather_model.dart';
import 'package:weather_app_techidaara/ui/screens/city_selection_screen.dart';
import 'package:weather_app_techidaara/ui/screens/home_screen.dart';
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

      case HomeScreen.routeName:
        final args = settings.arguments as WeatherModel;
        return MaterialPageRoute(
            builder: (_) => HomeScreen(weatherModel: args));

      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
