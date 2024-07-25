import 'package:flutter/material.dart';

class Education extends StatelessWidget {
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
                'Education',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold ,color: Colors.white),
              ),
              SizedBox(height: 16),
              EducationItem(
                degree:
                'Bachelor of Engineering in Information Science and Technology',
                school: 'Avharya Institute of Technology',
                year: '2021-2025',
              ),
              EducationItem(
                degree: '11th & 12th',
                school: 'Sharadhamba Independent Science PU college',
                year: '2019-2021',
              ),
              EducationItem(
                degree: 'High School',
                school: 'Chanukya Public School',
                year: '2016-2019',
              ),
              SizedBox(height: 40), // Adjust spacing as needed
              Text(
                'Skills',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color:Colors.white),
              ),
              SizedBox(height: 16),
              EducationItem(
                degree: 'Flutter And Firebase',
                school: 'Google',
                year: '',
              ),
              EducationItem(
                degree: 'Prompt Engineering',
                school: 'OpenAi',
                year: '',
              ),
              EducationItem(
                degree: 'React Js and Node Js',
                school: 'W3School',
                year: '',
              ),
              EducationItem(
                degree: 'Django And Mysql',
                school: 'W3School',
                year: '',
              ),
              EducationItem(
                degree: 'UI ( Figma And Adobe XD )',
                school: 'Youtube',
                year: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String degree;
  final String school;
  final String year;

  EducationItem({required this.degree, required this.school, required this.year});

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
                degree,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(school),
              SizedBox(height: 4),
              Text(year),
            ],
          ),
        ),
      ),
    );
  }
}
