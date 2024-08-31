import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class Linkify extends StatefulWidget {
  const Linkify({super.key});

  @override
  State<Linkify> createState() => _LinkifyState();
}

class _LinkifyState extends State<Linkify> {
  SizedBox space10 = SizedBox(height: 10);
  SizedBox space20 = SizedBox(height: 20);
  SizedBox space50 = SizedBox(height: 50);

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
          'linkify',
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
            ],
          ),
        ),
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
                'linkify is a Flutter package that automatically detects and converts URLs, email addresses, phone numbers, and other text patterns in a string into clickable links. This package is particularly useful when you want to display text that may contain various types of links, allowing users to easily click on them to be redirected to a web page, send an email, or dial a phone number.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            space20,
            Text(
              '# Key Features of linkify:',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            space10,
            Text(
              '''
              1: Automatic Link Detection
              2: Clickable Links
              3: color
              4: Customization
              5:Support for Multiple Link Types
              ''',
              style: TextStyle(color: Colors.white),
            ),
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
              1: text
              2: onOpen
              3: style
              4: linkStyle
              5: textAlign
              6: textDirection
              7: maxLines
              8: overflow
              9: options
              10: softWrap
              11: linkifiers
              ''',
              style: TextStyle(color: Colors.white),
            ),
            space20,
            Text(
              '# linkify is this:',
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
                    image: AssetImage('asstes/images/linkify_logo.jpg'),
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
                  Image.asset('asstes/images/linkify_dependence.png'),
                  space20,
                  Text(
                    '2: Import package:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  space10,
                  Image.asset('asstes/images/linkify_import.png'),
                  space20,
                  Text(
                    '3: Implement:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  space10,
                  Image.asset('asstes/images/linkify_implement.png'),
                  space10,
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: SelectableLinkify(
                        onOpen: (link) async {
                          if (await canLaunchUrl(link.url as Uri)) {
                            await launchUrl(link.url as Uri);
                          } else {
                            throw 'Could not launch ${link.url}';
                          }
                        },
                        text: "Check out https://flutter.dev or email us at support@example.com.",
                        style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),
                        linkStyle: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  space20,
                  Divider(),
                  Text(
                    'for more information click here :',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL('https://pub.dev/packages/flutter_linkify');
                        },
                        child: Text(
                          'Flutter linkify on pub.dev',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
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
