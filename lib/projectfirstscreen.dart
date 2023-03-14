import 'package:flutter/material.dart';
import 'package:project/ProjectScreenOne.dart';
class screenthree extends StatelessWidget {
  const screenthree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screenthreeSTF(),
    );
  }
}
///stf
class screenthreeSTF extends StatefulWidget {
  const screenthreeSTF({Key? key}) : super(key: key);

  @override
  State<screenthreeSTF> createState() => _screenthreeSTFState();
}

class _screenthreeSTFState extends State<screenthreeSTF> {
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
            ///1ST ROW
            Container(
              margin: EdgeInsets.only(right: 10.0,top: 20.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: InkWell(
                      child: Container(
                        child: Text('Skip',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,

                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>projectscreen()),);
                      },
                    ),
                  ),
                ],
              ),


            ),
            ///2nd row
           Container(
             child: Row(
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 16.0,),
                   width:width*1,
                   height: height*0.55,
                   child: Image.asset('Assists/Images/f2.jpg'),
                 ),
               ],
             ),
           ),
            ///3rd Row
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.0,top: 50.0,),
                    child: Text('Find mutual',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ),
                ],
              ),

            ),
            ///4th row
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.0,),
                    child: Text('understanding',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 7.0,),
                    child: Text('with',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///5th row
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.0,),
                    child: Text('your childern',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///6th row
            Container(
              margin: EdgeInsets.only(top: 40.0,left: 18.0,),
              child: Row(
                children: [
                  Container(
                    width: width*0.9,
                    height: height*0.069,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple.shade400,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0,))
                      ),
                        onPressed:(){
                          Navigator.pushNamed(context, '/projectloginform');

                        },
                        child: Text('Get Started',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
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

