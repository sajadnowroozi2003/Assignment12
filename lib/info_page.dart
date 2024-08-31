import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

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
        backgroundColor: Colors.purple,
        title: const Text(
          'about me',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'SplashFont',
            color: Colors.white,
          ),
        ),
          automaticallyImplyLeading: false,
          actions: [
          IconButton(
          onPressed: () {
    Navigator.pop(context);
    },
      icon: Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
    )],
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
                colors: [
                  Colors.amber.shade900,
                  Colors.black,
                  Colors.purple,
                ])),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/sajad-success-photo.png'),
              ),
              const Text(
                'Sajad nowroozi',
                style: TextStyle(
                  fontFamily: 'Forte',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const Text(
                'Flutter Developer',
                style: TextStyle(
                  letterSpacing: 3,
                  fontSize: 15,
                  fontFamily: 'Forte',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              const Divider(
                thickness: 1,
                color: Colors.white,
                endIndent: 50,
                indent: 50,
                height: 50,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.purple.shade300,
                  child: const ListTile(
                    leading: Icon(Icons.email,color: Colors.white,),
                    title: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        'sajad.nowroozi5442@gmail.com',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.purple.shade300,
                  child: const ListTile(
                    leading: Icon(Icons.phone,color: Colors.white,),
                    title: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        '+93 728-754-735',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () => _launchURL('https://www.linkedin.com/in/sajad-nowroozi/'),
                      child: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                        backgroundImage: AssetImage('assts/images/mediaLogo/linkedin.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () => _launchURL('https://sajad.nowroozi5442@gmail.com'),
                      child: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                        backgroundImage: AssetImage('assts/images/mediaLogo/google.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () => _launchURL('https://www.instagram.com/sajad.nowroozi/'),
                      child: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/mediaLogo/social-instagram-new-circle-512.webp'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () => _launchURL('https://t.me/sajad_nowroozi'),
                      child: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                        backgroundImage: AssetImage('assts/images/mediaLogo/telegram.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
