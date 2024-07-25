import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          width: 600,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Projects',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color:Colors.white),
              ),
              SizedBox(height: 16),
              ProjectItem(
                title: 'Flutter Portfolio App',
                description: 'A personal portfolio app built with Flutter.',
                technologies: ['Flutter', 'Firebase'],
              ),
              ProjectItem(
                title: 'Salon Booking',
                description:
                'An online universal Booking app and website developed using Flutter and Firebase.',
                technologies: ['Flutter', 'Firebase'],
              ),
              ProjectItem(
                title: 'Water Booking',
                description:
                'An online pure Water booking website developed using Djano and Mysql.',
                technologies: ['Django', 'Mysql'],
              ),
              ProjectItem(
                title: 'Messaging App',
                description:
                'Fun messaging website with in group ',
                technologies: ['ReactJs', 'Nodejs'],
              ),
              ProjectItem(
                title: 'Chat_bot ',
                description:
                'Automated chat bot for my created Project',
                technologies: ['Python', 'OpenAI', 'Prompt Enginnering'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String title;
  final String description;
  final List<String> technologies;

  ProjectItem({
    required this.title,
    required this.description,
    required this.technologies,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(description),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: technologies
                    .map((tech) => Chip(label: Text(tech)))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
