import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData get theme {
    ThemeData base = ThemeData.light();

    return base.copyWith(
      scaffoldBackgroundColor: Colors.white,
      cardColor: Colors.white,
      textTheme: base.textTheme.copyWith(
        bodySmall: base.textTheme.bodySmall!.copyWith(
          color: Color(0xff757575),
        ),
      ),
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      colorScheme: ColorScheme(
        background: Colors.white,
        brightness: Brightness.light,
        primary: Colors.blue,
        onPrimary: Colors.white,
        secondary: Colors.green,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.grey,
        onSurface: Colors.black,
      ),
    );
  }

  static ThemeData get darkTheme {
    ThemeData base = ThemeData.dark();

    return base.copyWith(
      scaffoldBackgroundColor: Colors.black,
      cardColor: Colors.black,
      textTheme: base.textTheme.copyWith(
        bodySmall: base.textTheme.bodySmall!.copyWith(
          color: Color(0xffcdcdcd),
        ),
      ),
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      colorScheme: ColorScheme(
        background: Colors.black,
        brightness: Brightness.dark,
        primary: Colors.blue,
        onPrimary: Colors.white,
        secondary: Colors.green,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.grey,
        onSurface: Colors.black,
      ),
    );
  }
}
