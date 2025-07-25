import 'package:flutter/material.dart';
import '../models/course.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(course.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      children: course.topics.map((topic) {
        return ListTile(
  title: Text(
    topic['title'] as String,
    style: const TextStyle(fontWeight: FontWeight.w600),
  ),
  subtitle: Padding(
    padding: const EdgeInsets.only(top: 4.0),
    child: Text(topic['description'] as String),
  ),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TopicDetailScreen(
          title: topic['title'] as String,
          description: topic['description'] as String,
          videoUrl: topic['videoUrl'] as String,
        ),
      ),
    );
  },
)