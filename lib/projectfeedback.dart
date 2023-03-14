import 'package:flutter/material.dart';
class projectFeedback extends StatelessWidget {
  const projectFeedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: projectfeedbackSTF(),
    );
  }
}
///stf
class projectfeedbackSTF extends StatefulWidget {
  const projectfeedbackSTF({Key? key}) : super(key: key);

  @override
  State<projectfeedbackSTF> createState() => _projectfeedbackSTFState();
}

class _projectfeedbackSTFState extends State<projectfeedbackSTF> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0,),
                        ),
                        margin: EdgeInsets.only(top:150.0,),
                        width: width*0.45,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(width*0.4),
                          child: Image.asset('Assists/Images/hafiz.jpg') ,
                        ),
                        // child: Image.asset('Assists/Images/hafiz.jpg'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: height*0.05),
                        child: Text('Awesome',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: height*0.05),
                        child: Text('"Believe you can and youre halfway',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: height*0.01),
                        child: Text('there"',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: height*0.03),
                        width: width*0.8,
                        height: height*0.055,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                          ),
                            onPressed: (){},
                            child: Text('Leave Feedback',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),),
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






