import 'dart:io';
import 'dart:ui';

import 'package:assignment12/popup_menu_item.dart';
import 'package:assignment12/widget_screens/chewie.dart';
import 'package:assignment12/widget_screens/english_words.dart';
import 'package:assignment12/widget_screens/flutter_spinkit.dart';
import 'package:assignment12/widget_screens/font_awesome.dart';
import 'package:assignment12/widget_screens/linkify.dart';
import 'package:assignment12/widget_screens/rflutter_alert.dart';
import 'package:assignment12/widget_screens/share_plus.dart';
import 'package:assignment12/widget_screens/shimmer.dart';
import 'package:assignment12/widget_screens/text_to_speech.dart';
import 'package:assignment12/widget_screens/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map> Packages = [
    {
      'name': 'font_awesome',
      'rout': FontAwesome(),
      'image': 'asstes/images/fontAwesome_logo.jpeg',
    },
    {
      'name': 'fluttertoast',
      'rout': Toaast(),
      'image': 'asstes/images/FlutterToast_logo.png',
    },
    {
      'name': 'rflutter_alert',
      'rout': RflutterAlert(),
      'image': 'asstes/images/rFlutterAlert.png',
    },
    {
      'name': 'english_words',
      'rout': EnglishWords(),
      'image': 'asstes/images/EnglisWords_logo.png',
    },
    {
      'name': 'text_to_speech',
      'rout': TextToSpeech(),
      'image': 'asstes/images/TextToSpeach_logo.jpg',
    },
    {
      'name': 'share_plus',
      'rout': SharePlus(),
      'image': 'asstes/images/SharePlus_logo.png',
    },
    {
      'name': 'linkify',
      'rout': Linkify(),
      'image': 'asstes/images/linkify_logo.jpg',
    },
    {
      'name': 'flutter_spinkit',
      'rout': FlutterSpinkit(),
      'image': 'asstes/images/FlutterSpinKit_logo.jpg',
    },
    {
      'name': 'shimmer',
      'rout': Shimmer(),
      'image': 'asstes/images/shimmer_logo.jpg',
    },
    {
      'name': 'chewie',
      'rout': Chewie(),
      'image': 'asstes/images/chewie_logo.jpg',
    },
  ];

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $url')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
              icon: const Icon(Icons.more_vert, size: 20, color: Colors.white),
              onSelected: _choiceAction,
              itemBuilder: (BuildContext context) {
                return MenuItems.choic.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: ListTile(
                      title: Text(choice),
                      trailing: Icon(MenuItems.choiceIcons[choice]),
                    ),
                  );
                }).toList();
              },
            ),
          ],
          title: Text(
            'Top 10 Packages in Flutter',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Forte'),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  colors: [
                Colors.amber.shade900,
                Colors.black,
                Colors.purple,
              ])),
          child: GridView.builder(
              itemCount: Packages.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 250, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black45,
                          width: 0.5,
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white.withOpacity(0.5),
                              Colors.black87.withOpacity(0.2),
                            ]),
                        borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaY: 40, sigmaX: 100),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      width: 200,
                                      Packages[index]['image'].toString(),
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                              Divider(
                                height: 30,
                                thickness: 2,
                              ),
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Packages[index]['rout']),
                                    );
                                  },
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white70),
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.black45.withOpacity(0.2),
                                              Colors.blue.withOpacity(0.2)
                                            ])),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              textAlign: TextAlign.center,
                                              '${Packages[index]['name']}',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.white,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }

  void _choiceAction(String choice) {
    if (choice == MenuItems.share) {
      const url =
          'https://play.google.com/store/apps/details?id=com.example.top_ten_afghan_singer=en&pli=1';
      _launchURL(url);
    } else if (choice == MenuItems.about) {
      Navigator.pushNamed(context, '/info');
    } else if (choice == MenuItems.exit) {
      if (Platform.isAndroid) {
        SystemNavigator.pop();
      } else if (Platform.isIOS) {
        exit(0);
      }
    }
  }
}
