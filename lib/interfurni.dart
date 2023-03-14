import 'package:flutter/material.dart';
class interfurni extends StatelessWidget {
  const interfurni({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: interfurniSTF(),
    );
  }
}
///stf
class interfurniSTF extends StatefulWidget {
  const interfurniSTF({Key? key}) : super(key: key);

  @override
  State<interfurniSTF> createState() => _interfurniSTFState();
}

class _interfurniSTFState extends State<interfurniSTF> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height =MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50.0,top: 20.0,),
              child: Text('Furniture Shop',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.0,),
              child: Text('Perfect Choice!!',
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  text: "Food",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25.0,
                  ),
                  children: [
                    TextSpan(text: "Panda",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 25.0,
                      )
                    ),
                  ],
                ),


              ),
            ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),
                      Text('hamza'),


                    ],
                  ),
                ),
              ),


          ],

        ),
      ),
    );
  }
}

