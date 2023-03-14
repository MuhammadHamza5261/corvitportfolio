import 'package:flutter/material.dart';

class MedicalHomeScreen extends StatelessWidget {
  const MedicalHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MedicalHomeScreenSTF();
  }
}

///agay stf
class MedicalHomeScreenSTF extends StatefulWidget {
  const MedicalHomeScreenSTF({Key? key}) : super(key: key);

  @override
  State<MedicalHomeScreenSTF> createState() => _MedicalHomeScreenSTFState();
}

class _MedicalHomeScreenSTFState extends State<MedicalHomeScreenSTF> {
  /// ya variable hamesha opar hum declare karwata han
  late double width;
  late double height;


  @override
  Widget build(BuildContext context) {
    ///ya dono height and width  app ko responsive karta ha

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;



    return Container(
     color:Colors.lightBlue,
     height: height*0.5,
     width: width*0.5,
    );
  }
}