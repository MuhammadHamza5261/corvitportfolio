import 'package:flutter/material.dart';
class backgroundimage extends StatelessWidget {
  const backgroundimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Background image'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding:  EdgeInsets.all(32),
        decoration:  BoxDecoration(
          image: new  DecorationImage(
            fit:BoxFit.cover,

            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
            image: AssetImage('Assists/Images/loginbg.png',

            ),


          ),
        ),
        child: const TextField(
          decoration: InputDecoration(hintText: 'Email'),
        ),
      ),

    );
  }
}
///stf


