import 'accueil.dart';
import 'VipPay.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FiltrePage extends StatefulWidget {
  @override
  _FiltrePageState createState() => _FiltrePageState();
}

class _FiltrePageState extends State<FiltrePage> {
  bool selectHommes = false;
  bool selectFemmes = false;
  double _ageMin = 18;
  double _ageMax = 90;
  double _distance = 10;
  bool selectMonPays = false;

  @override
  void initState() {
    super.initState();
    getSavedData();
  }

  void getSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      selectHommes = prefs.getBool('selectHommes') ?? false;
      selectFemmes = prefs.getBool('selectFemmes') ?? false;
      _ageMin = prefs.getDouble('ageMin') ?? 18;
      _ageMax = prefs.getDouble('ageMax') ?? 90;
      _distance = prefs.getDouble('distance') ?? 10;
      selectMonPays = prefs.getBool('selectMonPays') ?? false;
    });
  }

  void saveModifications() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('selectHommes', selectHommes);
    await prefs.setBool('selectFemmes', selectFemmes);
    await prefs.setDouble('ageMin', _ageMin);
    await prefs.setDouble('ageMax', _ageMax);
    await prefs.setDouble('distance', _distance);
    await prefs.setBool('selectMonPays', selectMonPays);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Filtres'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccueilPage()),
            );
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'À la recherche de',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectHommes = !selectHommes;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.pink,
                            width: 2.0,
                          ),
                          color: selectHommes
                              ? Colors.pink
                              : Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Hommes',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectFemmes = !selectFemmes;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.pink,
                            width: 2.0,
                          ),
                          color: selectFemmes
                              ? Colors.pink
                              : Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Femmes',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Âge                       ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '${_ageMin.toInt()} jusqu\'à ${_ageMax.toInt()} ans',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.pink,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: Colors.pink,
                        overlayColor: Colors.pink.withOpacity(0.4),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 24),
                      ),
                      child: RangeSlider(
                        values: RangeValues(_ageMin, _ageMax),
                        min: 18,
                        max: 90,
                        divisions: 72,
                        onChanged: (RangeValues values) {
                          setState(() {
                            _ageMin = values.start;
                            _ageMax = values.end;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      const Text(
                        'Distance                    ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'jusqu\'à ${_distance.toInt()} km',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.pink,
                        thumbColor: Colors.pink,
                        overlayColor: Colors.pink.withOpacity(0.4),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 24),
                      ),
                      child: Slider(
                        value: _distance,
                        min: 10,
                        max: 100,
                        divisions: 90,
                        label: _distance.round().toString() + ' km',
                        onChanged: (double value) {
                          setState(() {
                            _distance = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        'Seulement de mon pays',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Switch(
                        value: selectMonPays,
                        onChanged: (onChanged) {
                          setState(() {
                            selectMonPays = !selectMonPays;
                          });
                        },
                      ),
                    ],
                  ),
                  VIPContainer(),
                ],
              )),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            saveModifications();
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.pink, // Couleur rose
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Text(
            'Appliquer les modifications',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

class VIPContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Filtres VIP",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VIPPage(),
                ),
              );
            },
            child: Text(
              "Ouvert à",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 10.0),
              Image.asset(
                "assets/binoculars.png",
                width: 20.0,
                height: 20.0,
              ),
              SizedBox(width: 10.0),
              Text(
                "ouvert à",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: [
              FilterRectangle(
                text: "relation",
              ),
              FilterRectangle(
                text: "on verras bien",
              ),
              FilterRectangle(
                text: "quelque chose de décontracté",
              ),
              FilterRectangle(
                text: "amitié",
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Image.asset(
                "assets/certified.png",
                width: 20.0,
                height: 20.0,
              ),
              SizedBox(width: 10.0),
              Text(
                "Seuls les profils vérifiés",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Switch(
                value: false,
                onChanged: (value) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VIPPage(),
                    ),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FilterOption(
                logo: "assets/taille.png",
                text: "Taille",
              ),

              FilterOption(
                logo: "assets/corps.png",
                text: "Type de corps",
              ),
              FilterOption(
                logo: "assets/language.png",
                text: "Langues",
              ),
              FilterOption(
                logo: "assets/study.png",
                text: "Ma Formation",
              ),
              FilterOption(
                logo: "assets/love.png",
                text: "Situation familiale",
              ),
              FilterOption(
                logo: "assets/religion.png",
                text: "Religion",
              ),
              FilterOption(
                logo: "assets/cigar.png",
                text: "Fumeur",
              ),
              FilterOption(
                logo: "assets/vin.png",
                text: "Boire",
              ),
              FilterOption(
                logo: "assets/sport.png",
                text: "Sports",
              ),
              FilterOption(
                logo: "assets/ancre.png",
                text: "Tatouage",
              ),
              FilterOption(
                logo: "assets/dog.png",
                text: "Animaux domestiques",
              ),
              FilterOption(
                logo: "assets/casque.png",
                text: "Musique",
              ),
              FilterOption(
                logo: "assets/food.png",
                text: "Regime alimentaire",
              ),
              FilterOption(
                logo: "assets/enfant.png",
                text: "enfants",
              ),
              // Ajouter les autres options ici
            ],
          ),
        ],
      ),
    );
  }
}

class FilterRectangle extends StatelessWidget {
  final String text;

  const FilterRectangle({required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VIPPage(),
          ),
        );
      },
      child: Container(
        width: 130.0,
        height: 70.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.pink,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

class FilterOption extends StatelessWidget {
  final String logo;
  final String text;

  const FilterOption({required this.logo, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          logo,
          width: 20.0,
          height: 20.0,
        ),
        SizedBox(width: 10.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VIPPage(),
              ),
            );
          },
          icon: Icon(
            Icons.add,
            color: Color.fromARGB(255, 119, 110, 110),
          ),
        ),
      ],
    );
  }
}
