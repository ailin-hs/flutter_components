//Controlador de colores, fuentes, iconos del proyecto
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.pink;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(color: primary),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(color: primary),
    scaffoldBackgroundColor: Color(0xff474747),
  );
}
