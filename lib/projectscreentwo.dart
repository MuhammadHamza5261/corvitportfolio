import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:get/get.dart';

class projectscreentwo extends StatelessWidget {
  const projectscreentwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: projectscreentwoSTF(),
    );
  }
}

///stf
class projectscreentwoSTF extends StatefulWidget {
  const projectscreentwoSTF({Key? key}) : super(key: key);

  @override
  State<projectscreentwoSTF> createState() => _projectscreentwoSTFState();
}

class _projectscreentwoSTFState extends State<projectscreentwoSTF> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



