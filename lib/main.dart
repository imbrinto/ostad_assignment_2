import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/HomePage.dart';
import 'package:ostad_assignment_2/theme/app_theme.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightMode,
      home: const HomePage(),
    );
  }
}


