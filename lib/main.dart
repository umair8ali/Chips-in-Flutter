import 'package:flutter/material.dart';
// import 'package:implementation_chips/chip_screen.dart';
import 'package:implementation_chips/new_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: NewScreen(),
    );
  }
}
