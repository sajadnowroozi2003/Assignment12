import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class RflutterAlert extends StatefulWidget {
  const RflutterAlert({super.key});

  @override
  State<RflutterAlert> createState() => _RflutterAlertState();
}

class _RflutterAlertState extends State<RflutterAlert> {



  simpleAlert() {
    return Alert(
      title: 'Sajad  Nowroozi',
      desc: 'I am A Flutter Programmer',
      context: context,
    ).show();
  }

  //=================================================

  // ================================================

  customAlert() {
   return Alert(
     // type: AlertType.error,
     style: AlertStyle(

     ),
       desc: 'I am a flutter programmer!',
       image: Image.asset('asstes/images/sajad-success-photo.png',fit: BoxFit.cover,),
        context: context,
        title: 'Successful',
        buttons: [
          DialogButton(
              color: Colors.red,
              child: Text(
                'Close',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.pop(context);
              })
        ]).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
        title: Text(
          'rFlutter Alert',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Forte'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Example of rFlutter Alert',
            style: TextStyle(fontSize: 25, color: Colors.red),
          ),
          Divider(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              simpleAlert();
            },
            child: Text(
              'Simple Alert',
            ),
          ),Divider(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              customAlert();
            },
            child: Text(
              'Coustom Alert',
            ),
          ),
        ],
      ),
    );
  }
}
