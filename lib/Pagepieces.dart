import 'package:flutter/material.dart';
import 'package:flutter_application_1/account.dart';
import 'historique_pieces.dart';

class PiecePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountPage()),
            );
          },
        ),
        title: Text('Pieces'),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Votre solde',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HistoriquePieces()));
                        },
                        child: Text(
                          'Historique des transactions >',
                          style: TextStyle(color: Colors.pink, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/coins_j.png',
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '290',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 16, 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/information.png',
                    width: 35,
                    height: 35,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Que fais les pièces',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Vous pouvez utiliser des pièces pour envoyer un message aux autres utilisateurs avant d\'avoir un match',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Action when "Acheter des pièces" button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Text(
                      'Acheter des pièces',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Obtenir des pièces gratuitement',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Container(
                    height: 250, // Change height as per your requirement
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        // Add elements of your choice here
                        // Example:
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'Ajouter des informations sur \nvotre alimentation',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Ajouter votre taille \nvestimentaire",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("ajouter des informations\n sur vous",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Inviter un amis ",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+250',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Faites vous verifier",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+200',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Ajouter 3 photos de plus",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+250',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Regarder une vidéo",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Jusqu'à 500",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    "Ajouter des informations sur \nvotre statut relationnel",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Ajouter une formation',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'Ajouter des informations sur \nvos habitudes de \nconsommation de tabac',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Ajouter votre religion',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'Ajouter des informations sur \nvos habitudes de \nconsommation',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'Ajouter des informations sur \nvotre corps',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'Ajouter des informations sur \nvos enfants',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'Ajouter des informations sur \nles sports que vous faites',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'Ajouter des informations sur \nvos tatouages',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'Ajouter des informations sur \nvos animaux de compagnie',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Action when first element is pressed
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'Ajouter des informations sur \nvotre emploi',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181),
                                    )),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/coins_j.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '+20',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 130, 39),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
      home: PiecePage(),
    );
  }
}
