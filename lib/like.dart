import 'package:flutter/material.dart';
import 'accueil.dart';
import 'account.dart';
import 'communaute.dart';
import 'message.dart';

class LikesPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LikesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
              color: Colors.black, // Background noir
              child: TabBar(
                indicatorColor: Colors.pink,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                tabs: [
                  Tab(
                    child: Container(
                      child: Text("Mentions j'aime"),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text("Visiteurs"),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text("J'aimes envoyés"),
                    ),
                  ),
                ],
                controller: _tabController,
                indicator: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  MentionsJaimePage(),
                  VisiteursPage(),
                  JaimesEnvoyesPage(),
                ],
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
                        MaterialPageRoute(
                            builder: (context) => CommunautePage()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/favorite_home.png',
                        height: 60,
                        width: 60,
                        color: const Color.fromARGB(255, 182, 181, 181)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LikePage()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/messages_home.png',
                        height: 60, width: 60, color: Colors.white),
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
      ),
    );
  }
}

class MentionsJaimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Mentions j'aime",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Liste des personnes qui ont aimé votre profil",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Demandez la permission d'accéder aux fichiers et à la caméra ici
                // Ouvrez une fenêtre pour sélectionner ou prendre une photo
              },
              child: Text(
                "Choisir une photo",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(double.infinity, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VisiteursPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Code à exécuter lorsque le texte est cliqué
              },
              child: Text(
                "Visiteurs",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.pink,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Liste des personnes qui ont visité votre profil récemment",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Demandez la permission d'accéder aux fichiers et à la caméra ici
                // Ouvrez une fenêtre pour sélectionner ou prendre une photo
              },
              child: Text(
                "Choisir une photo",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(double.infinity, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JaimesEnvoyesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Code à exécuter lorsque le texte est cliqué
              },
              child: Text(
                "J'aimes envoyés",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.pink,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "  Liste des profils auxquels vous avez envoyé un j'aime",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Demandez la permission d'accéder aux fichiers et à la caméra ici
                // Ouvrez une fenêtre pour sélectionner ou prendre une photo
              },
              child: Text(
                "Jouer au zapping",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(double.infinity, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LikePage extends StatefulWidget {
  @override
  _LikePageState createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LikesPage(),
    );
  }
}
