import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
class pushNotification extends StatelessWidget {
  const pushNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pushNotificationSTF(),
    );
  }
}
///stf
class pushNotificationSTF extends StatefulWidget {
  const pushNotificationSTF({Key? key}) : super(key: key);

  @override
  State<pushNotificationSTF> createState() => _pushNotificationSTFState();
}

class _pushNotificationSTFState extends State<pushNotificationSTF> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

