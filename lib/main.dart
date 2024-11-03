import 'package:flutter/material.dart';
import 'src/screens/profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfil - Tarea2.1',
      home: ProfileScreen(),
    );
  }
}
