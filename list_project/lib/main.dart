import 'package:flutter/material.dart';
import 'package:list_project/professor.dart';
import 'package:list_project/professor_stf.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: prof_stf(),
    );
  }
}
