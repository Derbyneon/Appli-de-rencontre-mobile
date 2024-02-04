import 'package:flutter/material.dart';

class InscriptionReussieDialog extends StatefulWidget {
  final String email;

  InscriptionReussieDialog({required this.email});

  @override
  _InscriptionReussieDialogState createState() =>
      _InscriptionReussieDialogState();
}

class _InscriptionReussieDialogState extends State<InscriptionReussieDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Inscription réussie'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Bienvenue ${widget.email} !'),
          SizedBox(height: 16.0),
          Text('Une animation de blablabla ici...'),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
