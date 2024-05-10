import 'package:flutter/material.dart';

class AppTheme{
  static final lightMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.grey.shade300,
    appBarTheme: AppBarTheme(
      color: Colors.grey.shade300
    )
  );
}