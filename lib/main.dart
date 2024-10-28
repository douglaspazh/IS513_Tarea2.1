import 'package:flutter/material.dart';
import 'package:is513_tarea2_1/src/screens/design_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pantalla Diseño Tarea2.1',
      home: DesignScreen(),
    );
  }
}
