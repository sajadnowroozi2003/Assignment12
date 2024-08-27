import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

class SharePlus extends StatefulWidget {
  const SharePlus({super.key});

  @override
  State<SharePlus> createState() => _SharePlusState();
}

class _SharePlusState extends State<SharePlus> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  SizedBox space10 = SizedBox(
    height: 10,
  );
  SizedBox space20 = SizedBox(
    height: 20,
  );
  SizedBox space50 = SizedBox(
    height: 50,
  );

  Future<void> _shareImage() async {
    try {
      final ByteData data = await rootBundle
          .load('asstes/images/SharePluse_show_method_sharing.png');
      final buffer = data.buffer.asUint8List();
      final directory = await getTemporaryDirectory();
      final filePath = '${directory.path}/SharePluse_show_method_sharing.png';
      final file = File(filePath);

      await file.writeAsBytes(buffer);
      final result =
          await Share.shareXFiles([XFile(filePath)], text: 'Great picture!');
      if (result.status == ShareResultStatus.success) {
        print('Thank you for sharing the picture!');
      } else {
        print('Sharing failed or was canceled.');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
        title: Text(
          'Share plus',
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
                'The share_plus package provides a straightforward way to integrate sharing capabilities in your Flutter app. Whether you\'re sharing text, links, or files, this package handles the underlying platform-specific implementations for you.',
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
              1: Cross-Platform Support
              2: Text and Links
              3: Files
              4: Multiple Files
              5: Custom MIME Types
              6: Subject Line
             
              ''',
              style: TextStyle(color: Colors.white),
            ),
            space20,
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
                  space10,
                  Text(
                    'Go to "pub.dev" website and search name of package copy the last version and then Go to the pubspec.yaml\'s file and add dependencies under cupertino_icons like this:',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  space10,
                  Image.asset('asstes/images/SharePlus_dependence.png'),
                  space20,
                  Text(
                    '2: Import package:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  space10,
                  Image.asset('asstes/images/SharePlus_import.png'),
                  space20,
                  Text(
                    '3: Implement:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  space20,
                  Text(
                    '# Kind of Share plus:',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  space20,
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('asstes/images/SharePluse_show_basic_sharing.png'),
                      ),
                      space10,
                      ElevatedButton(
                        onPressed: () {
                          Share.share('Check out this Flutter plugin!');
                        },
                        child: Text("Show Basic Sharing"),
                      ),
                      space50,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Image.asset('asstes/images/SharePluse_show_with_subject.png'),
                      ),
                      space10,
                      ElevatedButton(
                        onPressed: () {
                          Share.share('Hello, World!',
                              subject: 'This is a subject line');
                        },
                        child: Text("Show Sharing with a Subject"),
                      ),
                      space50,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'asstes/images/SharePluse_show_link_sharing.png'),
                      ),
                      space10,
                      ElevatedButton(
                        onPressed: () {
                          Share.share('https://flutter.dev');
                        },
                        child: Text("Show Link Sharing"),
                      ),
                      space50,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'asstes/images/SharePluse_show_method_sharing.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'asstes/images/SharePluse_show_single_file.png'),
                      ),
                      space10,
                      space10,
                      ElevatedButton(
                        onPressed: _shareImage,
                        child: Text("Show Single File"),
                      ),
                    ],
                  ),
                  space50,
                  ElevatedButton(
                    onPressed: () =>
                        _launchURL('https://pub.dev/packages/share_plus'),
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
