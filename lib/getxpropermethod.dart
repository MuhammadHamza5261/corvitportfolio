import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/getxpropermethod2.dart';

import 'getxmethodthree.dart';
///get x has 3 methods
///navigation
///state management
///counter update value




class SC1 extends StatelessWidget {
  SC1({Key? key}) : super(key: key);

  final GetXController c =Get.put(GetXController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: ElevatedButton(
                onPressed: (){
                  Get.to(Sc2());
                },
                child: Text('Sc2'),
              ),

            ),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.red,
            ),
            Obx(() => Text('Value of Counter${c.counter}')),
            ElevatedButton(onPressed: (){
              c.increment();
            },
                child: Text('Click here to update value')
            ),
          ],
        ),
      ),
    );
  }
}