import 'package:assignment12/home_screen.dart';
import 'package:assignment12/info_page.dart';
import 'package:assignment12/splash_screen.dart';
import 'package:assignment12/widget_screens/toast.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/fluttertoast': (context) => Toaast(),
        '/info': (context) => InfoPage(),
      },
    );
  }
}
