import 'package:flutter/material.dart';
import '../models/course.dart';
import 'topics_screen.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Courses')),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return Card(
            margin: const EdgeInsets.all(12),
            child: ListTile(
              title: Text(course.title,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(course.description),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => TopicsScreen(course: course)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
