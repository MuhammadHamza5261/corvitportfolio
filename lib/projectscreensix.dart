import 'package:flutter/material.dart';
import 'package:project/ProjectScreenOne.dart';
class screensix extends StatelessWidget {
  const screensix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screeensixSTF(),
    );
  }
}
///stf
class screeensixSTF extends StatefulWidget {
  const screeensixSTF({Key? key}) : super(key: key);

  @override
  State<screeensixSTF> createState() => _screeensixSTFState();
}

class _screeensixSTFState extends State<screeensixSTF> {
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: height*0.17,),
                        width: width*0.5,
                        child: Image.asset('Assists/Images/thumb.gif'),
                      ),
                      Container(
                        child: Text('Account Created!',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: height*0.04,),
                        child: Text('Your account had been created',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      ///sucessfully
                      Container(
                        margin: EdgeInsets.only(top: height*0.01,),
                        child: Text('Sucessfully',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      ///btn
                      Container(
                        margin: EdgeInsets.only(top: height*0.07),
                        width: width*0.6,
                        height: height*0.065,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))
                          ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>projectscreen()),);
                            },
                            child: Text('Get Started',
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            )
                      ),
                      ),
                    ],
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

