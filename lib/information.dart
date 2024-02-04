import 'package:flutter/material.dart';
import 'package:flutter_application_1/account.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 0, right: 20),
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.close, color: Colors.grey),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountPage()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Text(
                'Informations et conditions',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                InfoItem(
                  text: 'Mentions légales',
                  icon: Icons.message,
                  url: 'https://www.example.com/mentions-legales',
                ),
                InfoItem(
                  text: 'Conditions',
                  icon: Icons.flag,
                  url: 'https://www.example.com/conditions',
                ),
                InfoItem(
                  text: 'Politique de confidentialité',
                  icon: Icons.lock,
                  url: 'https://www.example.com/politique-confidentialite',
                ),
              ],
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Icon(Icons.favorite, size: 30, color: Colors.white),
                  Text(
                    '© 2022 Votre Entreprise',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final String url;

  const InfoItem({required this.text, required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () => _launchURL(),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Icon(icon, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  void _launchURL() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Impossible de lancer l\'URL : $url');
    }
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon application',
      home: InformationPage(),
    );
  }
}
