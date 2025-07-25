import 'package:flutter/material.dart';
import '../models/course.dart';

class TopicDetailScreen extends StatelessWidget {
  final Topic topic;

  const TopicDetailScreen({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(topic.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          topic.content,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
