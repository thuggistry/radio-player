import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/favorites.dart';

class Config {
  static const String title = "Egypt Radio";

  static Map<String, WidgetBuilder> navigationRoutes(BuildContext context) {
    return {
      '/favorites': (context) => FavoritesScreen(),
    };
  }

  static ThemeData themeOptions(BuildContext context) {
    return ThemeData(
      primaryColor: Color(0xFF263241),
      accentColor: Color(0xFF413f6A),
      primaryTextTheme: GoogleFonts.montserratTextTheme(
        Theme.of(context).textTheme,
      ),
      textTheme: GoogleFonts.montserratTextTheme(
        Theme.of(context).textTheme,
      ),
    );
  }

  static Decoration backgroundGradient() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.5, 1.3],
        colors: [
          Color(0xFF263241),
          Color(0xFF413f6A),
        ],
      ),
    );
  }
}