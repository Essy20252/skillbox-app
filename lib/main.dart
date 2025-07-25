import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const SkillBoxApp());
}

class SkillBoxApp extends StatelessWidget {
  const SkillBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkillBox',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginScreen(),
    );
  }
}
