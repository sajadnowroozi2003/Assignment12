import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class Toaast extends StatefulWidget {
  const Toaast({super.key});

  @override
  State<Toaast> createState() => _ToaastState();
}

class _ToaastState extends State<Toaast> {
  SizedBox space10 = SizedBox(
    height: 10,
  );
  SizedBox space20 = SizedBox(
    height: 20,
  );

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
        title: Text(
          'Flutter Toast',
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
                'FlutterToast is a Flutter package that enables you to display short, non-intrusive messages, known as toast messages, to users. These messages briefly appear on the screen to notify users of actions, like confirming a form submission or showing an error message. Toast messages are commonly used in mobile applications for quick, context-aware feedback.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            space20,
            Text(
              '# Properties:',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            space10,
            Text(
              '''
              1: msg
              2: toastLength:
              3: gravity
              4: timeInSecForIosWeb
              5: backgroundColor
              6: textColor
              7: fontSize
              8: webBgColor
              9: webPosition
              10: webShowClose
              11: timeInSecForIos
              12: androidToastLength
              13: toastLengthWeb
              ''',
              style: TextStyle(color: Colors.white),
            ),
            space20,
            Text(
              '# Toast is like this:',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            space20,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('asstes/images/FlutterToast_logo.png'),
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                height: 200,
                width: double.infinity,
              ),
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  Text(
                    'Go to "pub.dev" website and search name of package copy the last version and then Go to the pubspec.yaml\'s file and add dependencies under cupertino_icons like this:',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  space10,
                  Image.asset('asstes/images/FlutterToast_dependencies.png'),
                  space20,
                  Text(
                    '2: Import package:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  space10,
                  Image.asset('asstes/images/FlutterToast_import.png'),
                  space20,
                  Text(
                    '3: Implement:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  space10,
                  Image.asset('asstes/images/FlutterToast_impelemnt.png'),
                  space10,
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'This is Toast I love you bro🤪',
                          toastLength: Toast.LENGTH_LONG,
                          backgroundColor: Colors.amber,
                          fontSize: 20,
                          textColor: Colors.white,
                          gravity: ToastGravity.TOP,
                          timeInSecForIosWeb: 5,
                        );
                      },
                      child: Text(
                        'Click Me to show Toast in this page',
                      ),
                    ),
                  ),
                  space20,
                  ElevatedButton(
                    onPressed: () => _launchURL(
                        'https://pub.dev/packages/fluttertoast'),
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
