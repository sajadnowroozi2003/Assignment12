import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Words',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EnglishWords(),
    );
  }
}

class EnglishWords extends StatefulWidget {
  @override
  _EnglishWordsState createState() => _EnglishWordsState();
}

class _EnglishWordsState extends State<EnglishWords> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  SizedBox space10 = SizedBox(
    height: 10,
  );
  SizedBox space20 = SizedBox(
    height: 20,
  );
  SizedBox space50 = SizedBox(
    height: 50,
  );
  String _randomWord = '';
  // Method to generate a random word
  void _generateRandomWord() {
    final wordPair = WordPair.random();
    setState(() {
      _randomWord = wordPair.asPascalCase; // Use asPascalCase or any other format
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
        title: Text(
          'Daily Words',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Forte'),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
                colors: [
              Colors.amber.shade900,
              Colors.black,
              Colors.purple,
            ])),
        child: ListView(
          children: [
            Divider(),
            Text(
              '# Description:',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'The english_words package is a lightweight library for Flutter that provides a simple way to generate random English word pairs. It\'s particularly useful for creating mock data, testing applications, or building word-based games and apps.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            space20,
            Text(
              '# Key Features:',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            space10,
            Text(
              '''
              1: Random Word Generation: 
              2: Predefined Word List: 
              3: Simple Integration:
              4: Various Formatting Options: 
             
              ''',
              style: TextStyle(color: Colors.white),
            ), space20,
            Text(
              '# Typical Use Cases:',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            space10,
            Text(
              '''
              1: App Testing: 
              2: Prototyping:
              3: Learning and Teaching:
              4: Learning and Teaching: 
              5: Games: 
              ''',
              style: TextStyle(color: Colors.white),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black45,
                ),
                child: Center(
                  child: Text(
                    'How to use',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1: Add dependencies:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Go to "pub.dev" website and search name of package copy the last version and then Go to the pubspec.yaml\'s file and add dependencies under cupertino_icons like this:',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  space10,
                  Image.asset('asstes/images/english_words_dependances.png'),
                  space20,
                  Text(
                    '2: Import package:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  space10,
                  Image.asset('asstes/images/english_words_import.png'),
                  space20,
                  Text(
                    '3: Implement:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  space10,
                  Text(
                    'Create method to generate random words',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  space10,
                  Image.asset('asstes/images/english_words_random_method.png'),

                  space20,
                  Text(
                    '# Generate Random Words',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  space50,
                  Center(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.amber,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      height: 300,
                      width: double.infinity,

                      child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          space50,
                          Text(
                            _randomWord,
                            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          space20,
                          ElevatedButton( onPressed: _generateRandomWord,
                            child: Text('Generate Random Word'),),
                        ],
                      ),
                    ),
                  ),

                  space20,
                  ElevatedButton(
                    onPressed: () =>
                        _launchURL('https://pub.dev/packages/english_words'),
                    child: Text('learn more'),
                  ),
                  SizedBox(
                    height: 50,
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
