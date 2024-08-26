import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';

class RflutterAlert extends StatefulWidget {
  const RflutterAlert({super.key});

  @override
  State<RflutterAlert> createState() => _RflutterAlertState();
}

class _RflutterAlertState extends State<RflutterAlert> {
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

  void _showBasicAlert(BuildContext context) {
    Alert(
      context: context,
      title: "Basic Alert",
      desc: "This is a basic alert dialog using rflutter_alert.",
    ).show();
  }

  void _showSuccessAlert(BuildContext context) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Success",
      desc: "This is a success alert dialog.",
      buttons: [
        DialogButton(
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.green,
          radius: BorderRadius.circular(10.0),
        ),
      ],
    ).show();
  }

  void _showErrorAlert(BuildContext context) {
    Alert(
      context: context,
      type: AlertType.error,
      title: "Error",
      desc: "This is an error alert dialog.",
      buttons: [
        DialogButton(
          child: Text(
            "CLOSE",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.red,
          radius: BorderRadius.circular(10.0),
        ),
      ],
    ).show();
  }

  void _showWarningAlert(BuildContext context) {
    Alert(
      context: context,
      type: AlertType.warning,
      title: "Warning",
      desc: "This is a warning alert dialog.",
      buttons: [
        DialogButton(
          child: Text(
            "CONTINUE",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.orange,
          radius: BorderRadius.circular(10.0),
        ),
      ],
    ).show();
  }

  void _showInfoAlert(BuildContext context) {
    Alert(
      context: context,
      type: AlertType.info,
      title: "Information",
      desc: "This is an informational alert dialog.",
      buttons: [
        DialogButton(
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.blue,
          radius: BorderRadius.circular(10.0),
        ),
      ],
    ).show();
  }

  void _showCustomAlert(BuildContext context) {
    Alert(
      context: context,
      title: "Custom Alert",
      desc: "This alert has a custom image.",
      image: Image.asset("asstes/images/sajad-success-photo.png"),
      // Replace with your image path
      buttons: [
        DialogButton(
          child: Text(
            "GOT IT",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.purple,
          radius: BorderRadius.circular(10.0),
        ),
      ],
    ).show();
  }

  void _showStyledAlert(BuildContext context) {
    Alert(
      context: context,
      style: AlertStyle(
        backgroundColor: Colors.teal,
        titleStyle: TextStyle(color: Colors.white),
        descStyle: TextStyle(color: Colors.white70),
        animationType: AnimationType.grow,
        isCloseButton: false,
        isOverlayTapDismiss: false,
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(
            color: Colors.green,
          ),
        ),
        alertAlignment: Alignment.center,
      ),
      title: "Styled Alert",
      desc: "This alert is fully customized with a unique style.",
      buttons: [
        DialogButton(
          child: Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          gradient: LinearGradient(colors: [Colors.green, Colors.blue]),
          radius: BorderRadius.circular(10.0),
        ),
      ],
    ).show();
  }

  void _showAlertWithCustomContent(BuildContext context) {
    Alert(
      context: context,
      title: "Custom Content",
      content: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle),
              labelText: 'Username',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'Password',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          child: Text(
            "LOGIN",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.blueAccent,
          radius: BorderRadius.circular(10.0),
        )
      ],
    ).show();
  }

  // ================================================
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
                'rflutter_alert is a Flutter package that provides beautiful and customizable alert dialogs. This package allows you to create alerts with various styles, including success, error, warning, and more. You can also add images, buttons, and customize the dialog\'s appearance to suit your app\'s design.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            space20,
            Text(
              '# Properties:',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            space10,
            Text(
              '''
              1: context
              2: type:
                   - AlertType.none: No icon is displayed.
                   - AlertType.success: Displays a success icon.
                   - AlertType.error: Displays an error icon.
                   - AlertType.warning: Displays a warning icon.
                   - AlertType.info: Displays an info icon.
                   - AlertType.custom: Allows for custom icons.
              3: title
              4: desc
              5: buttons
              6: style
              7: image
              8: closeFunction
              9: onWillPopActive
              10: content
              ''',
              style: TextStyle(color: Colors.white),
            ),
            space20,
            Text(
              '#AlertStyle Properties:',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            space10,
            Text(
              '''
              1: animationType:
                   - AnimationType.fromRight
                   - AnimationType.fromLeft
                   - AnimationType.fromTop
                   - AnimationType.fromBottom
                   - AnimationType.grow
                   - AnimationType.shrink
              2: backgroundColor:
              3: isCloseButton
              4: isOverlayTapDismiss
              5: descStyle
              6: titleStyle
              7: animationDuration
              8: alertBorder
              9: alertElevation
              10: overlayColor
              11: alertAlignment
              ''',
              style: TextStyle(color: Colors.white),
            ),
            space20,
            Text(
              '#DialogButton Properties:',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            space10,
            Text(
              '''
              1: child :
              2: onPressed :
              3: color
              4: gradient
              5: radius
              6: width
              7: height
              8: highlightColor
              9: border
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
                  Text(
                    'Go to "pub.dev" website and search name of package copy the last version and then Go to the pubspec.yaml\'s file and add dependencies under cupertino_icons like this:',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  space10,
                  Image.asset('asstes/images/rFlutterAlert_dependances.png'),
                  space20,
                  Text(
                    '2: Import package:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  space10,
                  Image.asset('asstes/images/rFlutterAlert_import.png'),
                  space20,
                  Text(
                    '3: Implement:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  space10,
                  Text(
                    'Create method foreach Kind of Alert like this',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),space20,
                  Text(
                    '# Kind of alerts button:',
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
                        child: Image.asset('asstes/images/_showBasicAlert.png'),
                      ),
                      space10,
                      ElevatedButton(
                        onPressed: () {
                          _showBasicAlert(context);
                        },
                        child: Text("Show Basic Alert"),
                      ),
                      space50,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Image.asset('asstes/images/_showSuccessAlert.png'),
                      ),
                      space10,
                      ElevatedButton(
                        onPressed: () {
                          _showSuccessAlert(context);
                        },
                        child: Text("Show Success Alert"),
                      ),
                      space50,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('asstes/images/_showErrorAlert.png'),
                      ),
                      space10,
                      ElevatedButton(
                        onPressed: () {
                          _showErrorAlert(context);
                        },
                        child: Text("Show Error Alert"),
                      ),
                      space50,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Image.asset('asstes/images/_showWarningAlert.png'),
                      ),
                      space10,
                      ElevatedButton(
                        onPressed: () {
                          _showWarningAlert(context);
                        },
                        child: Text("Show Warning Alert"),
                      ),
                      space50,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('asstes/images/_showInfoAlert.png'),
                      ),
                      space10,
                      ElevatedButton(
                        onPressed: () {
                          _showInfoAlert(context);
                        },
                        child: Text("Show Info Alert"),
                      ),
                      space50,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Image.asset('asstes/images/_showCustomAlert.png'),
                      ),
                      space10,
                      ElevatedButton(
                        onPressed: () {
                          _showCustomAlert(context);
                        },
                        child: Text("Show Custom Alert"),
                      ),
                      space50,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Image.asset('asstes/images/_showStyledAlert.png'),
                      ),
                      space10,
                      ElevatedButton(
                        onPressed: () {
                          _showStyledAlert(context);
                        },
                        child: Text("Show Styled Alert"),
                      ),
                      space50,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'asstes/images/_showAlertWithCustomContent.png'),
                      ),
                      space10,
                      ElevatedButton(
                        onPressed: () {
                          _showAlertWithCustomContent(context);
                        },
                        child: Text("Show AlertWithCustomContent Alert"),
                      ),
                    ],
                  ),
                  space50,
                  space20,
                  ElevatedButton(
                    onPressed: () =>
                        _launchURL('https://pub.dev/packages/rflutter_alertl'),
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
