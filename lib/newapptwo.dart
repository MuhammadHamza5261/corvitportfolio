import 'package:flutter/material.dart';
import 'package:project/firebaseSignup.dart';
class newapptwo extends StatelessWidget {
  const newapptwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: newapptwoSTF(),
    );
  }
}
///stf
class newapptwoSTF extends StatefulWidget {
  const newapptwoSTF({Key? key}) : super(key: key);

  @override
  State<newapptwoSTF> createState() => _newapptwoSTFState();
}

class _newapptwoSTFState extends State<newapptwoSTF> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(

            ),
          ],
        ),
      ),
    );
  }
}

