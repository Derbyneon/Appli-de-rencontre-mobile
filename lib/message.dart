import 'package:flutter/material.dart';
import 'accueil.dart';
import 'account.dart';
import 'like.dart';
import 'communaute.dart';

class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.black, // Background noir
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/inbox_empty.png', // Chemin vers l'image de boite de réception vide
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              "Votre boîte de réception est vide",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Commencez à découvrir et rencontrer de nouvelles personnes",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Action du bouton
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(200, 50),
              ),
              child: Text(
                "Commencer",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InboxPage(),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Image.asset('assets/cards_home.png',
                      height: 60, width: 60, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccueilPage()),
                    );
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/commu_home.png',
                      height: 60, width: 60, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CommunautePage()),
                    );
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/favorite_home.png',
                      height: 60, width: 60, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LikePage()),
                    );
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/messages_home.png',
                      height: 60,
                      width: 60,
                      color: const Color.fromARGB(255, 182, 181, 181)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MessagePage()),
                    );
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/user_home.png',
                      height: 60, width: 60, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
