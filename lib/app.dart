import 'package:countries_app/views/views.dart';
import 'package:flutter/material.dart';

class CountriesApp extends StatelessWidget {
  const CountriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
