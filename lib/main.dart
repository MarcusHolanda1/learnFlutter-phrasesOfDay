import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const frases = [
    "Frase top seu dia vai ser top",
    "Ola frase legal",
    "Frase maneira",
    "Strozin stroooo",
  ];

  void generatePhrases() {
    var randomPhrase = frases[Random().nextInt(frases.length)];

    setState(() {
      phraseOfDay = randomPhrase;
    });
  }

  var phraseOfDay = "Clique aqui para gerar sua frase";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                generatePhrases();
              },
              child: Text("Gerar frase"),
            ),
            Text(phraseOfDay)
          ],
        ),
      ),
    );
  }
}
