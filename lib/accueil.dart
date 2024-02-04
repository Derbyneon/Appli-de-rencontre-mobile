import 'package:flutter/material.dart';
import 'communaute.dart';
import 'account.dart';
import 'like.dart';
import 'message.dart';
import 'location_home.dart';
import 'filtre.dart';

class AccueilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Couleur d'arrière-plan de l'app bar
        elevation: 0, // Supprime l'ombre de l'app bar
        leading: IconButton(
          icon: Image.asset('assets/filter_home.png',
              height: 60,
              width: 60,
              color: Color.fromARGB(255, 255, 255, 255)), // Logo Paramètres
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FiltrePage()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/location_home.png',
                height: 60,
                width: 60,
                color: Colors.white), // Logo Localisation
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocationHome()),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black, // Arrière-plan noir de la page
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/image1.jpg'), // Insérer le chemin de votre photo
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Image.asset('assets/relation.png',
                                height: 60,
                                width: 60,
                                color: Color.fromARGB(255, 241, 29, 29)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AccountPage()),
                              );
                            },
                          ),
                          // optional, pour espacer l'icône du texte
                          Text(
                            'relations',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 182, 181, 181),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        children: [
                          Text(
                            'John,',
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          ),
                          Text(
                            ' 21',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                      child: Text(
                        'Casablanca . 3km',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 182, 181, 181),
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Image.asset(
                              'assets/refresh_pic.png',
                              height: 60,
                              width: 60,
                            ), // Logo Charger
                            onPressed: () {},
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            child: IconButton(
                              icon: Image.asset(
                                'assets/cross_pic.png',
                                height: 80,
                                width: 80,
                              ), // Logo Croix
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            child: IconButton(
                              icon: Image.asset(
                                'assets/message_pic.png',
                                height: 60,
                                width: 60,
                              ), // Logo Message
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            child: IconButton(
                              icon: Image.asset(
                                'assets/favorite_pic.png',
                                height: 80,
                                width: 80,
                              ), // Logo Cœur
                              onPressed: () {},
                            ),
                          ),
                          IconButton(
                            icon: Image.asset(
                              'assets/rocket_pic.png',
                              height: 60,
                              width: 60,
                            ), // Logo Fusée
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
              color: Colors.black, // Arrière-plan  noir de l'app bar en bas
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Image.asset(
                      'assets/cards_home.png',
                      height: 60,
                      width: 60,
                      color: const Color.fromARGB(255, 182, 181, 181),
                    ),
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
