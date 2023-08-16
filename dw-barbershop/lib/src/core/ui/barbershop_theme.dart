import 'package:flutter/material.dart';

sealed class BarberShopTheme {
  static ThemeData themeData = ThemeData(
    useMaterial3: true,
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      labelStyle: TextStyle(color: Colors.grey),
    ),
  );
}
