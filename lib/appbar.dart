import 'package:flutter/material.dart';
class appbar extends StatelessWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///app
      appBar: AppBar(
        leading:Icon(Icons.circle),
        actions: [
          Text('Hamza',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          TextButton(
            onPressed: (){},
            child: Text('Umer',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ],


      ),
      body: appbarSTF(),
    );
  }
}
///stf
class appbarSTF extends StatefulWidget {
  const appbarSTF({Key? key}) : super(key: key);

  @override
  State<appbarSTF> createState() => _appbarSTFState();
}

class _appbarSTFState extends State<appbarSTF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [

          ],

        ),
      ),
    );
  }
}

