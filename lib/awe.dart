import 'package:flutter/material.dart';
import 'package:project/firebaseSignup.dart';
class awe extends StatelessWidget {
  const awe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: aweSTF(),
    );
  }
}
class aweSTF extends StatefulWidget {
  const aweSTF({Key? key}) : super(key: key);

  @override
  State<aweSTF> createState() => _aweSTFState();
}

class _aweSTFState extends State<aweSTF> {
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
              child: Row(
                children: [
                  Container(
                    width: width*0.3,
                    child: Image.asset('Assists/Images/red.png'),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text('image 1'),
                      ),
                      Container(
                        child: Text('hufwhufdiuw'),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text('9797'),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: width*0.02),
                              child: Text('8.32'),
                            ),
                          ],
                        ),
                      ),
                    ],
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

