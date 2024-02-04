import 'package:flutter/material.dart';
import 'package:flutter_application_1/account.dart';

class VIPPage extends StatefulWidget {
  @override
  _VIPPageState createState() => _VIPPageState();
}

class _VIPPageState extends State<VIPPage> {
  int selectedOption = 0; // Index de l'offre d'abonnement sélectionnée

  List<Map<String, dynamic>> subscriptionOptions = [
    {
      'title': 'Abonnement 1',
      'price': '9.99',
    },
    {
      'title': 'Abonnement 2',
      'price': '19.99',
    },
    {
      'title': 'Abonnement 3',
      'price': '29.99',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.emoji_events,
                      color: Colors.yellow,
                      size: 24.0,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'VIP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Color.fromARGB(255, 119, 110, 110),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AccountPage(),
                      ),
                    );
                    // Naviguer vers la page précédente
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Abonnez-vous dès maintenant',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Profitez de tous les avantages VIP',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: subscriptionOptions.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedOption = index;
                    });
                  },
                  child: Container(
                    width: 280.0,
                    height: 200,
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color:
                            selectedOption == index ? Colors.pink : Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          subscriptionOptions[index]['title'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Visibility(
                          visible: selectedOption == index,
                          child: Icon(
                            Icons.check,
                            color: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [RencontreContainer()],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Effectuer le paiement de l'abonnement sélectionné
                },
                child: Text(
                  'Payer ${subscriptionOptions[selectedOption]['price']}',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RencontreContainer extends StatelessWidget {
  // Liste de données avec des textes, des logos et des textes gris différents
  final List<Map<String, dynamic>> data = [
    {
      'texte': 'Filtres avancés',
      'logo': 'assets/love_r.png',
      'texteGris': 'Ajoutez autant de filtre que vous le souhaitez',
    },
    {
      'texte': "Voir qui t'as laisé une mention j'aime",
      'logo': 'assets/love_r.png',
      'texteGris': 'Match avec eux instantanément',
    },
    {
      'texte': 'Aimes autant de persones que tu souhaites',
      'logo': 'assets/security_r.png',
      'texteGris': "Obtenir des mentions j'aime illimitées"
    },
    {
      'texte': 'Faites le premier pas',
      'logo': 'assets/love_r.png',
      'texteGris':
          "Enpêcher les autres de vous envoyer un message si vous n'avez pas un match ou si vous n'etes pas le premier à envoyer un message",
    },
    {
      'texte': '5 demandes de chat gratuit par jour',
      'logo': 'assets/filtre.png',
      'texteGris': "N'attendez pas un match avant de chatter"
    },
    {
      'texte': "Acceder à des communautées vip",
      'logo': 'assets/security_r.png',
      'texteGris': "la façon la plus exclusive de rencontrer des gens",
    },
    {
      'texte': "Utiliser le mode incognito",
      'logo': 'assets/horloge.png',
      'texteGris': "Parcourez les profils sans en informerr les personnes",
    },
    {
      'texte': "Plus d'information sur les profils",
      'logo': 'assets/filtre.png',
      'texteGris': "Afficher le dernier statut en ligne d'une personne",
    },
    {
      'texte': "Avoir une seconde chance",
      'logo': 'assets/refresh_r.png',
      'texteGris': "Revenir en arrière et glisser à nouveau",
    },
    {
      'texte': "Discuter avec les nouvelles personnes avant tout le monde",
      'logo': 'assets/group_r.png',
      'texteGris': 'Fais le premier pas',
    },
    {
      'texte': "Sans publicités",
      'logo': 'assets/group_r.png',
      'texteGris': "Profiter sans distractiions",
    },
    {
      'texte': "Retrouver des personnes ",
      'logo': 'assets/compassion.png',
      'texteGris': "Voir tous les j'aime envoyés",
    },

    // Ajoutez plus d'éléments de données selon vos besoins
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Container(
            height: 20,
            alignment: Alignment.center,
            child: Text(
              'Inclut dans le programme VIP',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        data[index]['logo'],
                        width: 20,
                        height: 20,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data[index]['texte'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                data[index]['texteGris'],
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 60,
            alignment: Alignment.bottomCenter,
            child: Text(
              "Si tu achète un abonnement, le paiement sera débité de ton compte google pay. L'abonnement se renouvelle",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
