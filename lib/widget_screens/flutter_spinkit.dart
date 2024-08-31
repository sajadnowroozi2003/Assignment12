import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';

class FlutterSpinkit extends StatefulWidget {
  const FlutterSpinkit({super.key});

  @override
  State<FlutterSpinkit> createState() => _FlutterSpinkitState();
}

class _FlutterSpinkitState extends State<FlutterSpinkit>
    with SingleTickerProviderStateMixin {
  // State variable to hold the selected spinner type

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  SizedBox space10 = SizedBox(height: 10);
  SizedBox space20 = SizedBox(height: 20);
  SizedBox space50 = SizedBox(height: 50);

  String? selectedSpinnerType;

  // Method to get spinner based on type
  Widget getSpinner(String spinnerType) {
    switch (spinnerType) {
      case 'SpinKitRotatingCircle':
        return SpinKitRotatingCircle(color: Colors.blue, size: 50.0);
      case 'SpinKitChasingDots':
        return SpinKitChasingDots(color: Colors.green, size: 50.0);
      case 'SpinKitPulse':
        return SpinKitPulse(color: Colors.red, size: 50.0);
      case 'SpinKitDoubleBounce':
        return SpinKitDoubleBounce(color: Colors.orange, size: 50.0);
      case 'SpinKitWave':
        return SpinKitWave(color: Colors.purple, size: 50.0);
      case 'SpinKitWanderingCubes':
        return SpinKitWanderingCubes(color: Colors.teal, size: 50.0);
      case 'SpinKitFadingCube':
        return SpinKitFadingCube(color: Colors.indigo, size: 50.0);
      case 'SpinKitThreeBounce':
        return SpinKitThreeBounce(color: Colors.cyan, size: 50.0);
      case 'SpinKitCircle':
        return SpinKitCircle(color: Colors.lightBlue, size: 50.0);
      case 'SpinKitCubeGrid':
        return SpinKitCubeGrid(color: Colors.lime, size: 50.0);
      case 'SpinKitFoldingCube':
        return SpinKitFoldingCube(color: Colors.pink, size: 50.0);
      case 'SpinKitPumpingHeart':
        return SpinKitPumpingHeart(color: Colors.redAccent, size: 50.0);
      case 'SpinKitDualRing':
        return SpinKitDualRing(color: Colors.amber, size: 50.0);
      case 'SpinKitHourGlass':
        return SpinKitHourGlass(color: Colors.brown, size: 50.0);
      case 'SpinKitFadingFour':
        return SpinKitFadingFour(color: Colors.deepPurple, size: 50.0);
      case 'SpinKitFadingGrid':
        return SpinKitFadingGrid(color: Colors.amber, size: 50.0);
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ],
          ),
        ),
        child: ListView(children: [
          Divider(),
          Text(
            '# Description:',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'The Flutter spinkit package is a popular library used to display various loading animations (also known as "spinners"). It\'s particularly useful when you want to show users that some content is loading or a process is ongoing. The package offers a wide variety of pre-made spinners, which are customizable in terms of size and color.',
              style: TextStyle(color: Colors.white),
            ),
          ),
          space20,
          Text(
            '# Properties:',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          space10,
          Text(
            '''
              1: color
              2: size
              3: controller
              4: duration
              5: itemBuilder
              6: direction
              7: shape
              8: closeFunction
              9: onWillPopActive
              10: content
              ''',
            style: TextStyle(color: Colors.white),
          ),
          space20,
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
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
                Image.asset('asstes/images/flutter_spinkit_dependences.png'),
                space20,
                Text(
                  '2: Import package:',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                space10,
                Image.asset('asstes/images/flutter_spinkit_import.png'),
                space20,
                Text(
                  '3: Implement:',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                space10,
                Text(
                  'Create method and add all Spinners like this',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                space20,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('asstes/images/SpinKitMethod.png'),
                ),
                space50,
                Text(
                  '# Kind of Spinners:',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Divider(
                  height: 60,
                ),
                Center(
                  child: Text(
                    'Spinners :',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                space20,
                // SpinKitRotatingCircle
                Center(
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitRotatingCircle_button.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitRotatingCircle';
                              });
                            },
                            child: Text("SpinKitRotatingCircle"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitRotatingCircle')
                            getSpinner('SpinKitRotatingCircle'),
                        ],
                      ),
                      space50,
                      // SpinKitChasingDots
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitChasingDots.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitChasingDots';
                              });
                            },
                            child: Text("SpinKitChasingDots"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitChasingDots')
                            getSpinner('SpinKitChasingDots'),
                        ],
                      ),
                      space50,
                      // SpinKitPulse
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Image.asset('asstes/images/SpinKitPulse.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitPulse';
                              });
                            },
                            child: Text("SpinKitPulse"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitPulse')
                            getSpinner('SpinKitPulse'),
                        ],
                      ),
                      space50,
                      // SpinKitDoubleBounce
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitDoubleBounce.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitDoubleBounce';
                              });
                            },
                            child: Text("SpinKitDoubleBounce"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitDoubleBounce')
                            getSpinner('SpinKitDoubleBounce'),
                        ],
                      ),
                      space50,
                      // SpinKitWave
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('asstes/images/SpinKitWave.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitWave';
                              });
                            },
                            child: Text("SpinKitWave"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitWave')
                            getSpinner('SpinKitWave'),
                        ],
                      ),
                      space50,
                      // SpinKitWanderingCubes
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitWanderingCubes.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitWanderingCubes';
                              });
                            },
                            child: Text("SpinKitWanderingCubes"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitWanderingCubes')
                            getSpinner('SpinKitWanderingCubes'),
                        ],
                      ),
                      space50,
                      // SpinKitFadingCube
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitFadingCube.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitFadingCube';
                              });
                            },
                            child: Text("SpinKitFadingCube"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitFadingCube')
                            getSpinner('SpinKitFadingCube'),
                        ],
                      ),
                      space50,
                      // SpinKitThreeBounce
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitThreeBounce.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitThreeBounce';
                              });
                            },
                            child: Text("SpinKitThreeBounce"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitThreeBounce')
                            getSpinner('SpinKitThreeBounce'),
                        ],
                      ),
                      space50,
                      // SpinKitCircle
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Image.asset('asstes/images/SpinKitCircle.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitCircle';
                              });
                            },
                            child: Text("SpinKitCircle"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitCircle')
                            getSpinner('SpinKitCircle'),
                        ],
                      ),
                      space50,
                      // SpinKitCubeGrid
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitCubeGrid.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitCubeGrid';
                              });
                            },
                            child: Text("SpinKitCubeGrid"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitCubeGrid')
                            getSpinner('SpinKitCubeGrid'),
                        ],
                      ),
                      space50,
                      // SpinKitFoldingCube
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitFoldingCube.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitFoldingCube';
                              });
                            },
                            child: Text("SpinKitFoldingCube"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitFoldingCube')
                            getSpinner('SpinKitFoldingCube'),
                        ],
                      ),
                      space50,
                      // SpinKitPumpingHeart
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitPumpingHeart.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitPumpingHeart';
                              });
                            },
                            child: Text("SpinKitPumpingHeart"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitPumpingHeart')
                            getSpinner('SpinKitPumpingHeart'),
                        ],
                      ),
                      space50,
                      // SpinKitDualRing
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitDualRing.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitDualRing';
                              });
                            },
                            child: Text("SpinKitDualRing"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitDualRing')
                            getSpinner('SpinKitDualRing'),
                        ],
                      ),
                      space50,
                      // SpinKitHourGlass
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitHourGlass.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitHourGlass';
                              });
                            },
                            child: Text("SpinKitHourGlass"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitHourGlass')
                            getSpinner('SpinKitHourGlass'),
                        ],
                      ),
                      space50,
                      // SpinKitFadingFour
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitFadingFour.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitFadingFour';
                              });
                            },
                            child: Text("SpinKitFadingFour"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitFadingFour')
                            getSpinner('SpinKitFadingFour'),
                        ],
                      ),
                      space50,
                      // SpinKitFadingGrid
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                                'asstes/images/SpinKitFadingGrid.png'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              setState(() {
                                selectedSpinnerType = 'SpinKitFadingGrid';
                              });
                            },
                            child: Text("SpinKitFadingGrid"),
                          ),
                          space50,
                          if (selectedSpinnerType == 'SpinKitFadingGrid')
                            getSpinner('SpinKitFadingGrid'),
                        ],
                      ),
                    ],
                  ),
                ),
                space50,
                Divider(),
                Text(
                  'for more information click here :',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: ElevatedButton(
                          onPressed: () {
                            _launchURL('https://pub.dev/packages/flutter_spinkit');
                          },
                          child: Text(
                            'Flutter Spinkit on pub.dev',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        ]),
      ),
    );
  }
}
