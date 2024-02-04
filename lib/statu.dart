import 'package:flutter/material.dart';

class StatusSimulation extends StatefulWidget {
  @override
  _StatusSimulationState createState() => _StatusSimulationState();
}

class _StatusSimulationState extends State<StatusSimulation>
    with SingleTickerProviderStateMixin {
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];
  late AnimationController _animationController;
  late Animation<double> _progressAnimation;
  int _statusIndex = 0;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _progressAnimation =
        Tween(begin: 0.0, end: 1.0).animate(_animationController)
          ..addListener(() {
            setState(() {
              _progress = _progressAnimation.value;
            });
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _statusIndex++;
              if (_statusIndex >= 4) {
                _statusIndex = 0;
              }
              _progress = 0.0;
              _animationController.reset();
              _animationController.forward();
            }
          });
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onBackPressed() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: _onBackPressed,
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          _animationController.stop();
          setState(() {
            _statusIndex++;
            if (_statusIndex >= 4) {
              _statusIndex = 0;
            }
            _progress = 0.0;
          });
          _animationController.reset();
          _animationController.forward();
        },
        child: Container(
          color: colors[_statusIndex],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LinearProgressIndicator(
                value: _progress,
                minHeight: 5.0,
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
              ),
              SizedBox(height: 16.0),
              Text(
                'Statut ${_statusIndex + 1}',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 48.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                _animationController.stop();
                setState(() {
                  _statusIndex = 0;
                  _progress = 0.0;
                });
                _animationController.reset();
                _animationController.forward();
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: 5.0,
                color: (_statusIndex == 0) ? Colors.white : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                _animationController.stop();
                setState(() {
                  _statusIndex = 1;
                  _progress = 0.0;
                });
                _animationController.reset();
                _animationController.forward();
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: 5.0,
                color: (_statusIndex == 1) ? Colors.white : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                _animationController.stop();
                setState(() {
                  _statusIndex = 2;
                  _progress = 0.0;
                });
                _animationController.reset();
                _animationController.forward();
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: 5.0,
                color: (_statusIndex == 2) ? Colors.white : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                _animationController.stop();
                setState(() {
                  _statusIndex = 3;
                  _progress = 0.0;
                });
                _animationController.reset();
                _animationController.forward();
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: 5.0,
                color: (_statusIndex == 3) ? Colors.white : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Lancer les statuts'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StatusSimulation()),
            );
          },
        ),
      ),
    );
  }
}
