import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FontAwesome extends StatefulWidget {
  const FontAwesome({super.key});

  @override
  State<FontAwesome> createState() => _FontAwesomeState();
}

class _FontAwesomeState extends State<FontAwesome> {
  SizedBox space20 = SizedBox(height: 20);
  SizedBox space10 = SizedBox(height: 10);

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
          'Font Awesome Icons',
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
                  Colors.white,
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
                'This icon pack includes only the free icons offered by Font Awesome out-of-the-box. If you have purchased the pro icons and want to enable support for them, please see the instructions below.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            space20,
            Text(
              '# Some Icons:',
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
                    image: AssetImage('asstes/images/font_awesome_example.jpg'),
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
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Go to pubspec.yaml\'s file and add dependencies under cupertino_icons like this:',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              space10,
              Image.asset('asstes/images/fontAwesome_dependencies.png'),
              space20,
              Text(
                '2: Import package:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              space10,
              Image.asset('asstes/images/fontAwesome_importPackage.png'),
              space20,
              Text(
                '3: Implement:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              space10,
              Image.asset('asstes/images/fontAwesome_implement.png'),
              space10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.twitter,
                    size: 50.0,
                  ),
                  SizedBox(width: 20.0),
                  FaIcon(
                    FontAwesomeIcons.github,
                    size: 50.0,
                  ),
                ],
              ),
              space20,
              ElevatedButton(
                  onPressed: () => _launchURL('https://pub.dev/packages/font_awesome_flutter'),
                  child: Text('learn more'),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      ],
    ),)
    ,
    );
  }

}
