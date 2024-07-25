import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CVDownload extends StatelessWidget {
  final String cvUrl =
      'https://drive.google.com/file/d/1AzmorZYyCZTx6a0fSg2XQxwoZQGRcZvM/view?usp=sharing';

  final List<Map<String, String>> certificates = [
    {
      'title': 'Certificate of Achievement in Flutter Development',
      'viewUrl':
      'https://drive.google.com/file/d/1QI5S1iyVYiJU9tT1NbXDIBnPyQvLoL69/view?usp=sharing'
    },
    {
      'title': 'Certificate of Completion for Web Development Course',
      'viewUrl':
      'https://drive.google.com/file/d/1welgYypnbBV3GVrtcgcOT_opfbhShnBv/view?usp=sharing'
    },
    {
      'title': 'Certificate of Participation in Prompt Engineering',
      'viewUrl': 'https://learn.deeplearning.ai/accomplishments/785e900c-6015-475c-b143-d676be469b41?usp=sharing'
    },
  ];

  Future<void> _downloadCV() async {
    if (await canLaunch(cvUrl)) {
      await launch(cvUrl);
    } else {
      throw 'Could not launch $cvUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 600),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Download My CV',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 60),
                    ElevatedButton.icon(
                      onPressed: _downloadCV,
                      icon: Icon(Icons.file_download, color: Colors.black),
                      label: Text('Download CV', style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Click the button above to download my CV in PDF format.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 60),
                    Text(
                      'Certificates',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    ...certificates.map((cert) => CertificateItem(
                      certificate: cert['title']!,
                      viewUrl: cert['viewUrl']!,
                    )).toList(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CertificateItem extends StatelessWidget {
  final String certificate;
  final String viewUrl;

  CertificateItem({required this.certificate, required this.viewUrl});

  Future<void> _launchCertificateView() async {
    if (await canLaunch(viewUrl)) {
      await launch(viewUrl);
    } else {
      throw 'Could not launch $viewUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: Icon(
                Icons.assignment,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              certificate,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: _launchCertificateView,
            child: Text(
              'View',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}