import 'package:flutter/material.dart';

import 'login.dart';

class TutorialPage extends StatefulWidget {
  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  int _currentPage = 1;
  double _progressValue = 0.0;

  List<String> _tutorialTexts = [
    "Tutoriel 1",
    "Tutoriel 2",
    "Tutoriel 3",
    "Tutoriel 4",
    "Tutoriel 5",
    "Tutoriel 6",
  ];

  void _nextPage() {
    setState(() {
      if (_currentPage < _tutorialTexts.length) {
        _currentPage++;
        _progressValue = _currentPage / _tutorialTexts.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Image.asset(
                        'assets/tutorial_image_${_currentPage}.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: LinearProgressIndicator(
                          value: _progressValue,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.pink),
                          backgroundColor: Colors.white,
                          minHeight: 12,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      _tutorialTexts[_currentPage - 1],
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (_currentPage < _tutorialTexts.length)
                            ElevatedButton(
                              onPressed: _nextPage,
                              child: Text('Suivant'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.pink, // Couleur rose
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            )
                          else
                            ElevatedButton(
                              onPressed: () {
                                // Naviguer vers la page LoginPage()
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                              child: Text('Terminer'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.pink, // Couleur rose
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 16,
            right: 16,
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.white),
              onPressed: () {
                // Naviguer directement vers la page LoginPage()
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
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
      home: TutorialPage(),
    );
  }
}
