import 'package:flutter/material.dart';
import 'package:project/projectsignupform.dart';
class screenfour extends StatelessWidget {
  const screenfour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenfourSTF(),
      backgroundColor: Colors.black,

    );
  }
}
///stf
class screenfourSTF extends StatefulWidget {
  const screenfourSTF({Key? key}) : super(key: key);

  @override
  State<screenfourSTF> createState() => _screenfourSTFState();
}

class _screenfourSTFState extends State<screenfourSTF> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            ///1st row
            Container(
              width: width*0.99,
              height: height*0.77,
              margin: EdgeInsets.only(right:10.0,top: 45.0,),
              child: Image.asset('Assists/Images/brain.png'),
            ),
            ///2nd row
            Container(
              margin: EdgeInsets.only(top: 40.0,),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.0,top: 6.0,),
                        child: Text('Hi there! I m Physocologist',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        child: Text('And you are?',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ),
            ///3rd row
            Container(
              margin: EdgeInsets.only(top: 70.0,left: 26.0,),
              child: Row(
                children: [
                  Container(
                    width: width*0.85,
                    height: height*0.17,
                    child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           primary: Colors.purple.shade400,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0,))
                            
                      
                        ),
                        onPressed:(){},
                        child: Text('SIGNIN WITH GOOGLE'),
                  ),
                  ),
                ],
              ),
            ),
            ///4TH ROW
            Container(
              margin: EdgeInsets.only(top: 20.0,left: 26.0,),
              child: Row(
                children: [
                  Container(
                    width: width*0.85,
                    height: height*0.17,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0,))
                      ),
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>screenfive()),);

                      },
                      child: Text('SIGN IN WITH EMAIL'),
                    ),
                  ),
                ],
              ),
            ),
            ///5th row
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15.0,top: 30.0,),
                        child: Text('By creating a new account or sign in you are',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0,top: 10.0,),
                        child: Text('according to our most of service  and focus',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w300,
                          ),
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

