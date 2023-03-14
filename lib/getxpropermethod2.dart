import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/getxmethodthree.dart';



class Sc2 extends StatelessWidget {
   Sc2({Key? key}) : super(key: key);


  final GetXController c = Get.find();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Text('Screen 2'),
            ),
            Container(
              child: Text('Value of counter is ${c.counter}'),
            ),
            Container(
              child: ElevatedButton(
                onPressed: (){
                  Get.back();
                },
                child: Text('back Screen'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}