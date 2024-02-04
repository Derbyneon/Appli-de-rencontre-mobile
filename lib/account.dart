import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pagepieces.dart';
import 'package:flutter_application_1/VipPay.dart';
import 'package:flutter_application_1/help.dart';
import 'package:flutter_application_1/information.dart';
import 'package:flutter_application_1/notification.dart';
import 'package:location/location.dart';
import 'accueil.dart';
import 'communaute.dart';
import 'like.dart';
import 'message.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AccountPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AccountPage> {
  Location location = Location();
  late PermissionStatus _permissionGranted;

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
                  Container(
                    height: 80,
                    color: Colors.black,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Positioned(
                          right: 10,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.orange),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: Image.asset(
                                          'assets/coins.png',
                                          height: 30,
                                          width: 40,
                                        ), // Logo Croix
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PiecePage()),
                                          );
                                        },
                                      ),
                                      Text(
                                        "999",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    color: Colors.black,
                    child: InkWell(
                      onTap: () {
                        Fluttertoast.showToast(
                            msg:
                                "Cette fonctionnalité n'est pas encore disponible ");
                      },
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/user.png',
                              width: 100,
                              height: 300,
                            ), // Logo Croix
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Test, 23",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "profil vérifié",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 119, 110, 110),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 69, 27, 27),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VIPPage()),
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 233, 90, 123),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/crown.png',
                                  width: 100,
                                  height: 300,
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Devenir VIP",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Maximise tes chances",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromARGB(255, 119, 110, 110),
                              ),
                            ],
                          ),
                        )),
                  ),
                  Container(
                    height: 80,
                    color: Colors.black,
                    child: InkWell(
                      onTap: () {
                        Fluttertoast.showToast(
                            msg:
                                "Cette fonctionnalité n'est pas encore disponible ");
                      },
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/certified.png',
                              width: 80,
                              height: 60,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vérifier maintenant,",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Montre que tu es une personne\n réelle",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 119, 110, 110),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    color: Colors.black,
                    child: InkWell(
                      onTap: () async {
                        await showLocationPermissionDialog(context);
                      },
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/location.png',
                              width: 100,
                              height: 300,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Activer la \ngéolocalisation",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Pour voir les personnes\n de ta région",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 119, 110, 110),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 380,
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Fluttertoast.showToast(
                                msg:
                                    "Cette fonctionnalité n'est pas encore disponible ");
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/person.png',
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Compte",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromARGB(255, 119, 110, 110),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotificationsPage()),
                            );
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/notification.png',
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(width: 10),
                                Text("Notifications",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromARGB(255, 119, 110, 110),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Fluttertoast.showToast(
                                msg:
                                    "Cette fonctionnalité n'est pas encore disponible ");
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/security.png',
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(width: 10),
                                Text("Confidentialité",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromARGB(255, 119, 110, 110),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AssistancePage()),
                            );
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/help.png',
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(width: 10),
                                Text("Aide",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromARGB(255, 119, 110, 110),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InformationPage()),
                            );
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/information.png',
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(width: 10),
                                Text("Information",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromARGB(255, 119, 110, 110),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PiecePage()),
                            );
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/coins_w.png',
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(width: 10),
                                Text("Pieces",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromARGB(255, 119, 110, 110),
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
                      height: 60,
                      width: 60,
                      color: const Color.fromARGB(255, 182, 181, 181)),
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

  Future<void> showLocationPermissionDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          title: Text(
            'Permission de géolocalisation',
            style: TextStyle(color: Colors.white),
          ),
          content: Text(
            'Cette application a besoin de votre autorisation pour accéder à votre géolocalisation.',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                await requestLocationPermission();
                if (_permissionGranted == PermissionStatus.granted) {
                  Navigator.of(context).pop();
                  // Faire quelque chose ici avec la géolocalisation
                  // par exemple, obtenir les coordonnées actuelles de l'utilisateur
                  LocationData locationData = await location.getLocation();
                  print('Latitude: ${locationData.latitude}');
                  print('Longitude: ${locationData.longitude}');
                } else {
                  Navigator.of(context).pop();
                  // L'utilisateur a refusé la permission de géolocalisation
                  print('Permission de géolocalisation refusée');
                }
              },
              child: Text(
                'Accorder',
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Annuler',
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> requestLocationPermission() async {
    PermissionStatus permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();
    }
    setState(() {
      _permissionGranted = permissionStatus;
    });
  }
}
