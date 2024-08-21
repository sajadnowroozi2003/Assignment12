import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: IconTheme(
            data: IconThemeData(
              color: Colors.white,
              size: 24,
            ),
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.amber.shade700),
                  currentAccountPictureSize: Size.square(75),
                  currentAccountPicture:
                      Image.asset('asstes/images/sajad-success-photo.png'),
                  accountName: Text(
                    'Sajad Nowroozi',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text('sajad.nowroozi5442@gmail.com'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.info_outline),
                  title: Text('About'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Exit'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          title: Text(
            'Top 10 Lybrary in Flutter',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.amber.shade800,
        ),
        body: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 250, mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amberAccent.shade700,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Widget Name',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
