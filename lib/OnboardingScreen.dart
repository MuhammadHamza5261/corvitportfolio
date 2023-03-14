import 'package:flutter/material.dart';

/// sab a sa pehla statelesswidget
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingScreenSTF(),

    );
  }
}
///phr state full widget
  class OnboardingScreenSTF extends StatefulWidget {
    const OnboardingScreenSTF({Key? key}) : super(key: key);

    @override
    State<OnboardingScreenSTF> createState() => _OnboardingScreenSTFState();
  }

  class _OnboardingScreenSTFState extends State<OnboardingScreenSTF> {
     late double width;
     late double height;

    @override
    Widget build(BuildContext context) {
      width = MediaQuery.of(context).size.width;
      height = MediaQuery.of(context).size.height;

      return Container(
        child: Stack(
          children: [
            Container(
              width: width,
              height: height *0.58,
              color: Colors.yellowAccent,
            ),
            ///dosra con
            Container(
              color: Colors.orangeAccent,
              height: height *0.42,
              margin: EdgeInsets.only(top: height*0.58),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: height*0.58),
                     child: Text('hamza'),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
      ///first con
      return Container();
    }
  }


