import 'package:flutter/material.dart';
import 'package:flutter_application_1/account.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  List<bool> switchValues = List<bool>.filled(10, false);
  List<String> whiteTexts = [
    'Texte 0 (Blanc)',
    'Texte 1 (Blanc)',
  ];
  List<String> greyTexts = [
    'Texte 0 (Gris)',
    'Texte 1 (Gris)',
  ];

  @override
  void initState() {
    super.initState();
    loadSwitchStates();
  }

  void loadSwitchStates() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      for (int i = 0; i < 2; i++) {
        switchValues[i] = prefs.getBool('switch_$i') ?? false;
      }
    });
  }

  void saveSwitchState(int index, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('switch_$index', value);
  }

  void saveSwitchStates() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (int i = 0; i < 2; i++) {
      await prefs.setBool('switch_$i', switchValues[i]);
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enregistrement'),
          content: Text('Les états des boutons switch ont été enregistrés.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Notifications'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AccountPage(),
              ),
            );
            // Gérer l'action du bouton retour
          },
        ),
      ),
      body: Column(
        children: [
          for (int i = 0; i < 2; i++)
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        whiteTexts[i],
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        greyTexts[i],
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Switch(
                    value: switchValues[i],
                    onChanged: (value) {
                      setState(() {
                        switchValues[i] = value;
                      });
                      saveSwitchState(i, value);
                    },
                    activeColor: Colors.pink,
                  ),
                ],
              ),
            ),
          Spacer(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            color: Colors.pink,
            child: TextButton(
              onPressed: () {
                saveSwitchStates();
              },
              child: Text(
                'Enregistrer',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
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
      home: NotificationsPage(),
    );
  }
}
