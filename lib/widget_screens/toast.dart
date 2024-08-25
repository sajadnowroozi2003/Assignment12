import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toaast extends StatefulWidget {
  const Toaast({super.key});

  @override
  State<Toaast> createState() => _ToaastState();
}

class _ToaastState extends State<Toaast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Example Flutter Toast',
              style: TextStyle(fontSize: 25, color: Colors.red),
            ),
            Divider(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: 'You have an error 🤣😂',
                  toastLength: Toast.LENGTH_LONG,
                  backgroundColor: Colors.purple,
                  fontSize: 20,
                  textColor: Colors.white,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 5,
                );
              },
              child: Text(
                'Click Me',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
