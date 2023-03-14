import 'package:flutter/material.dart';
class interview extends StatelessWidget {
  const interview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: interviewSTF(),
      backgroundColor: Colors.white70,
    );
  }
}
///stf
class interviewSTF extends StatefulWidget {
  const interviewSTF({Key? key}) : super(key: key);

  @override
  State<interviewSTF> createState() => _interviewSTFState();
}

class _interviewSTFState extends State<interviewSTF> {
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
              margin: EdgeInsets.only(left: 40.0,top: 30.0,),
              child: Text('Flutter Apps',style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,

              ),),

            ),
            Container(
              margin: EdgeInsets.only(left: 40.0,top: 20.0,),
              width: width*0.5,
              child: Image.asset('Assists/Images/girl2.png'),
            ),
            Container(
              width: width*0.35,
              height: height*0.055,
              margin: EdgeInsets.only(left: 50.0,top: 30.0,),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,))
                ),
                  onPressed:(){},
                  child: Text('Click Me',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
            ),
            ),
            Container(
              margin: EdgeInsets.only(left: 60.0,top: 20.0,),
              width: width*0.7,
              child: Card(
                child: Container(
                  child: Text('Card',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('FLUTTER',
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  Container(
                    child: Text('REACT NATIVE',
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  Container(
                    child: Text('REACT',
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  // card making
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              height: height*0.295,
              width: width,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                child: Container(
                  child: Row(
                    ///mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: width*0.45,
                        child: Image.asset('Assists/Images/red.png'),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 25.0,right: 53.0,),
                              child: Text('Irul Sofa',
                                style: TextStyle(
                                  fontSize: 25.0,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 92.0,),
                              child: Text('By Seto',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20.0,right: 5.0,),
                              child: Text('Enjonomical For all',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                           Container(
                             margin: EdgeInsets.only(left: 4.0,),
                             child: Text('Humans for body Curve',
                               style: TextStyle(
                                 fontSize: 15.0,
                                 fontWeight: FontWeight.w600,
                               ),
                             ),
                           ),
                            ///last row
                            Container(
                              margin: EdgeInsets.only(top: 20.0,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5.0,),
                                    child: Text('102.0',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 20.0,),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,))
                                        
                                            
                                      ),
                                        onPressed: (){},
                                        child: Text('Buy Now'),
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

