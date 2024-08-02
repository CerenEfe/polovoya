import 'package:flutter/material.dart';
import 'package:polovoya/core/utils/colors/colors.dart';
import 'package:polovoya/feature/intro/intro_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Polovoya',
      theme: ThemeData(
        scaffoldBackgroundColor: CustomColors.white,
        appBarTheme: const AppBarTheme(backgroundColor: CustomColors.white),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IntroView(),
    );
  }
}
