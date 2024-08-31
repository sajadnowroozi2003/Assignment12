import 'package:flutter/material.dart';

class MenuItems {
  static const String share = 'share app';
  static const String about = 'about me';
  static const String exit = 'exit';

  static const List<String> choic = <String>[share, about, exit];

  static const Map<String, IconData> choiceIcons = <String, IconData>{
    share: Icons.share,
    about: Icons.info_outline,
    exit: Icons.exit_to_app,
  };
}
