import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  List<String> _dailyWords = [];

  @override
  void initState() {
    super.initState();
    _loadDailyWords();
  }

  Future<void> _loadDailyWords() async {
    final prefs = await SharedPreferences.getInstance();
    final today = DateTime.now().toIso8601String().split('T').first;
    final lastSavedDate = prefs.getString('last_saved_date') ?? '';

    if (lastSavedDate != today) {
      _generateNewWords();
      prefs.setString('last_saved_date', today);
    } else {
      final savedWords = prefs.getStringList('daily_words') ?? [];
      setState(() {
        _dailyWords = savedWords;
      });
    }
  }

  void _generateNewWords() {
    final wordPairs =
        generateWordPairs().take(10).map((e) => e.asPascalCase).toList();
    setState(() {
      _dailyWords = wordPairs;
    });
    _saveDailyWords();
  }

  Future<void> _saveDailyWords() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('daily_words', _dailyWords);
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
      body: ListView.builder(
        itemCount: _dailyWords.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Center(
                  child: Text(
                _dailyWords[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
          );
        },
      ),
    );
  }
}
