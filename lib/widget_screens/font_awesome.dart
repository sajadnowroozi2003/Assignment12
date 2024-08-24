import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesome extends StatefulWidget {
  const FontAwesome({super.key});

  @override
  State<FontAwesome> createState() => _FontAwesomeState();
}

class _FontAwesomeState extends State<FontAwesome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '20 Font Awesom Icons',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Example:',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.home),
                  Text('home'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.phone),
                  Text('phone'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.cog),
                  Text('cog'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.heart),
                  Text('heart'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.shoppingCart),
                  Text('shoppingCart'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.search),
                  Text('search'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.bell),
                  Text('bell'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.calendar),
                  Text('calendar'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.camera),
                  Text('camera'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.lock),
                  Text('lock'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.globe),
                  Text('globe'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.trash),
                  Text('trash'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.cloud),
                  Text('cloud'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.play),
                  Text('play'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.download),
                  Text('download'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.upload),
                  Text('upload'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.star),
                  Text('star'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
