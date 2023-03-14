import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
class practise extends StatelessWidget {
  const practise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: practiseSTF(),
    );
  }
}
///stf
class practiseSTF extends StatefulWidget {
  const practiseSTF({Key? key}) : super(key: key);

  @override
  State<practiseSTF> createState() => _practiseSTFState();
}

class _practiseSTFState extends State<practiseSTF> {

  ///realtime database k lie
  DatabaseReference database = FirebaseDatabase.instance.ref();



  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              child: ElevatedButton(
                  onPressed:() async{
                   await database.child('PU/').push().set({
                   });

                  },
                  child: Text('button'),
            ),
            ),
          ],
        ),
      ),

    );
  }
}

