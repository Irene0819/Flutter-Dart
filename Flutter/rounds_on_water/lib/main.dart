import 'package:flutter/material.dart';
import 'package:rounds_on_water/main_screen/rounds_on_water.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RoundsOnWater(),
    );
  }
}
