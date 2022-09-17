import 'package:course_app/responsive/responsive.dart';
import 'package:course_app/start_screen/start_screen.dart';
import 'package:flutter/material.dart';
import 'home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Responsive(),
    );
  }
}
