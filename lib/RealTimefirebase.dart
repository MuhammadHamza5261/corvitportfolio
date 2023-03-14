import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
class firebaserealtime extends StatelessWidget {
  const firebaserealtime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: firebaserealtimeSTF(),
    );
  }
}
///stf
class firebaserealtimeSTF extends StatefulWidget {
  const firebaserealtimeSTF({Key? key}) : super(key: key);

  @override
  State<firebaserealtimeSTF> createState()=>_firebaserealtimeSTFState();
}

class _firebaserealtimeSTFState extends State<firebaserealtimeSTF> {

     ///Realtime database
  DatabaseReference database = FirebaseDatabase.instance.ref();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              child: ElevatedButton(
                onPressed:() async{
                 await database.child('User/').push().set({
                   ///json form ma ak sath data ja skta ha
                   "name":"Hamza",
                   "uid":"123",
                   "gender":"male",
                   "class":"Bscs"
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




