import 'package:flutter/material.dart';
import 'package:project/getx3.dart';

class getx2 extends StatelessWidget {
  ///final yaha varibale ha
  final text;
  const getx2({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Text('value from screen 1: ${text}'),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>getx3()));
                  },
                  child: Text('Screen 3'),
              ),
            ),
          ],
        ),


      ),
    );
  }
}
