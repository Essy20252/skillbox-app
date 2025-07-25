import 'package:flutter/material.dart';
import 'package:skillbox/screens/courses_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CoursesScreen(); // This will now work
  }
}
