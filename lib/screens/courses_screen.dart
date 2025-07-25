import 'package:flutter/material.dart';
import 'topic_detail_screen.dart'; // ✅ Make sure this file exists

class CoursesScreen extends StatelessWidget {
  CoursesScreen({super.key});

  final List<Map<String, dynamic>> courses = [
    {
      "title": "Canva Design Mastery",
      "description": "Learn how to create stunning visuals using Canva.",
      "topics": [
        {
          "title": "Introduction to Canva",
          "description": "Learn what Canva is, why it's useful, and what you can do with it.",
          "videoUrl": "https://www.youtube.com/watch?v=6j5AUi2cxvs"
        },
        {
          "title": "Designing a Flyer",
          "description": "A step-by-step tutorial on how to design a flyer for an event.",
          "videoUrl": "https://www.youtube.com/watch?v=T3Fy66r8I5c&t=103s"
        },
      ]
    },
    {
      "title": "Digital Marketing Essentials",
      "description": "Master the basics of digital marketing for small businesses.",
      "topics": [
        {
          "title": "What is Digital Marketing?",
          "description": "Understand the core components of digital marketing.",
          "videoUrl": "https://www.youtube.com/watch?v=aqJ2IEEIczU"
        },
        {
          "title": "Social Media Strategies",
          "description": "Learn how to market your business on platforms like Instagram and Facebook.",
          "videoUrl": "https://www.youtube.com/watch?v=l3_HA0lBPu0"
        },
      ]
    },
    {
      "title": "Job Readiness Training",
      "description": "Get prepared for the job market with these key skills.",
      "topics": [
        {
          "title": "Writing a Winning CV",
          "description": "Tips on how to write a compelling and professional CV.",
          "videoUrl": "https://www.youtube.com/watch?v=Y9Pyv-GWbmg&t=540s"
        },
        {
          "title": "How to Prepare for an Interview",
          "description": "Do's and Don'ts of job interviews to increase your chances.",
          "videoUrl": "https://www.youtube.com/watch?v=hqtTEpUcMIY"
        },
      ]
    },
  ]; // ✅ Properly closed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Courses')),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return ExpansionTile(
            title: Text(
              course['title'],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            children: (course['topics'] as List)
                .map<Widget>((topic) {
                  return ListTile(
                    title: Text(topic['title']),
                    subtitle: Text(topic['description']),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TopicDetailScreen(
                            title: topic['title'],
                            description: topic['description'],
                            videoUrl: topic['videoUrl'],
                          ),
                        ),
                      );
                    },
                  );
                })
                .toList(),
          );
        },
      ),
    );
  }
}
