import 'package:flutter/material.dart';
class Corvit extends StatelessWidget {
  const Corvit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Stack(
              children: [
                Image.asset('Assists/Images/white.png'),
                Container(
                  margin: EdgeInsets.only(left: 150.0,top: 150),
                  child: Text(
                      'AUDI CAR',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.red,
                    ),
                  )
                ),
                /// shirt ka container start ya img ko img pa lana k lie use karta ha
                Container(
                  height: 350,
                  child: Image.asset('Assists/Images/car.png'),
                ),
                
              ],
            ),
          ),

        ),
      ),
    );
  }
}
