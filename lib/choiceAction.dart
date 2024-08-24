import 'dart:io';

import 'package:assignment12/home_screen.dart';
import 'package:assignment12/popup_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';


Future<void> _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    ScaffoldMessenger.of(HomeScreen() as BuildContext).showSnackBar(
      SnackBar(content: Text('Could not launch $url')),
    );
  }
}

void _choiceAction(String choice) {
  if (choice == MenuItems.share) {
    const url =
        'https://play.google.com/store/apps/details?id=com.example.top_ten_afghan_singer=en&pli=1';
    _launchURL(url);
  } else if (choice == MenuItems.about) {
    Navigator.pushNamed(HomeScreen() as BuildContext, '/info');
  } else if (choice == MenuItems.exit) {
    if (Platform.isAndroid) {
      SystemNavigator.pop();
    } else if (Platform.isIOS) {
      exit(0);
    }
  }
}