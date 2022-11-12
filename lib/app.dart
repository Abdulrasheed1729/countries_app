import 'package:countries_app/core/core.dart';
import 'package:countries_app/views/views.dart';
import 'package:flutter/material.dart';

class CountriesApp extends StatelessWidget {
  const CountriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Countries App',
      home: const HomePage(),
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
    );
  }
}
