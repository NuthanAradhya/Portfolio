import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 600),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/profile_picture.jpg'),
                ),
                SizedBox(height: 20),
                Text(
                  'Nuthan Aradhya T J',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  'Software Engineer',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                SizedBox(height: 20),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Icon(Icons.email, color: Colors.black),
                          title: Text(
                            'nuthanaradhyaj.21.beis@acharya.ac.in',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone, color: Colors.black),
                          title: Text(
                            '9902900940',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_on, color: Colors.black),
                          title: Text(
                            'Bangalore',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Connect with me',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIcon(
                      icon: FontAwesomeIcons.github,
                      url: 'https://github.com/NuthanAradhya',
                    ),
                    SocialIcon(
                      icon: FontAwesomeIcons.linkedin,
                      url: 'https://www.linkedin.com/in/nuthanaradhyatj',
                    ),
                    SocialIcon(
                      icon: FontAwesomeIcons.envelope,
                      url: 'nuthanaradhyaj.21.beis@acharya.ac.in',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Me',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'I am a passionate Flutter developer with a keen interest in creating beautiful and functional mobile applications. My goal is to contribute to innovative projects and continuously improve my skills in mobile development.',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;

  SocialIcon({required this.icon, required this.url});

  Future<void> _launchUrl() async {
    if (icon == FontAwesomeIcons.envelope) {
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: url,
      );
      if (await canLaunchUrl(emailLaunchUri)) {
        await launchUrl(emailLaunchUri);
      } else {
        throw 'Could not launch email client';
      }
    } else {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: IconButton(
        icon: FaIcon(icon, size: 30, color: Colors.white),
        onPressed: _launchUrl,
      ),
    );
  }
}