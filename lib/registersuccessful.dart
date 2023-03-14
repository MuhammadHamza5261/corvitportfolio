import 'package:flutter/material.dart';
class registersuccessful extends StatefulWidget {
  const registersuccessful({Key? key}) : super(key: key);

  @override
  State<registersuccessful> createState() => _registersuccessfulState();
}

class _registersuccessfulState extends State<registersuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: registersuccessfulSTF(),
      backgroundColor: Colors.black,
    );
  }
}
///stf
class registersuccessfulSTF extends StatefulWidget {
  const registersuccessfulSTF({Key? key}) : super(key: key);

  @override
  State<registersuccessfulSTF> createState() => _registersuccessfulSTFState();
}

class _registersuccessfulSTFState extends State<registersuccessfulSTF> {
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
              margin: EdgeInsets.only(top: height*0.25),
              height: height*0.35,
              width: width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: width*0.4,top: height*0.03,),
                    width: width*0.2,
                    // height: height*0.3,
                    child: Image.asset('Assists/Images/purple.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width*0.25,top: height*0.03),
                    child: Text('Register Successful',
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width*0.37,top: height*0.05,),
                    width: width*0.25,
                    height: height*0.05,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,

                      ),
                      onPressed: (){},
                      child: Text('Ok'),
                    ),
                  ),
                ],
              ),


            ),
          ],
        ),
      ),
    );
  }
}

