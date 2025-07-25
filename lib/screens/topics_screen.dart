import 'package:flutter/material.dart';
import '../models/course.dart';
import 'topic_detail_screen.dart';

class TopicsScreen extends StatelessWidget {
  final Course course;

  const TopicsScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: ListView.builder(
        itemCount: course.topics.length,
        itemBuilder: (context, index) {
          final topic = course.topics[index];
          return ListTile(
            title: Text(topic.title),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => TopicDetailScreen(topic: topic),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
