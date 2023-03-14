import 'package:flutter/material.dart';
class audiocall extends StatelessWidget {
  const audiocall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: audiocallSTF(),
    );
  }
}
///stf
class audiocallSTF extends StatefulWidget {
  const audiocallSTF({Key? key}) : super(key: key);

  @override
  State<audiocallSTF> createState() => _audiocallSTFState();
}

class _audiocallSTFState extends State<audiocallSTF> {
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
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.purple,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20.0,right: 13.0,),
                            child: Text('+ Chiropractor',
                              style: TextStyle(
                                fontSize: 26.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0,),
                            ),
                            margin: EdgeInsets.only(left: 20.0,top:55.0,),
                            width: width*0.25,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(width*0.4),
                              child: Image.asset('Assists/Images/hafiz.jpg') ,
                            ),
                            // child: Image.asset('Assists/Images/hafiz.jpg'),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: width*0.24,top: height*0.06),
                                child: Text('Dr.Hafiz AR',
                                  style: TextStyle(
                                    fontSize: 26.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: width*0.035,top: height*0.001),
                                child: Text('Sr.Consultant Osteopath',
                                  style: TextStyle(
                                    fontSize: 21.0,
                                    color: Colors.cyan,
                                    fontWeight: FontWeight.w600,
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
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: width*0.03,top: height*0.015),
                            child: Text('Choose Your Slot',
                              style: TextStyle(
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width*0.02),
                      child: Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: width*0.03,top: height*0.01),
                                      child: Text('Sun',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),


                                    ),
                                    Container(
                                      width: width*0.09,
                                     child: Card(
                                       margin: EdgeInsets.only(left: 7.0,top: 2.0),
                                       color: Colors.grey,
                                       child: Container(
                                         margin: EdgeInsets.only(left: 5.0,top: 2.0),
                                         child: Text('1',
                                           style: TextStyle(
                                             fontSize: 20.0,
                                           ),
                                         ),
                                       ),
                                     ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: width*0.03,top: height*0.01),
                                      child: Text('Mon',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),


                                    ),
                                    Container(
                                      width: width*0.09,
                                      child: Card(
                                        margin: EdgeInsets.only(left: 7.0,top: 2.0),
                                        color: Colors.grey,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5.0,top: 2.0),
                                          child: Text('1',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: width*0.03,top: height*0.01),
                                      child: Text('Tues',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),


                                    ),
                                    Container(
                                      width: width*0.09,
                                      child: Card(
                                        margin: EdgeInsets.only(left: 7.0,top: 2.0),
                                        color: Colors.grey,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5.0,top: 2.0),
                                          child: Text('1',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: width*0.03,top: height*0.01),
                                      child: Text('Wed',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),


                                    ),
                                    Container(
                                      width: width*0.09,
                                      child: Card(
                                        margin: EdgeInsets.only(left: 7.0,top: 2.0),
                                        color: Colors.grey,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5.0,top: 2.0),
                                          child: Text('1',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: width*0.03,top: height*0.01),
                                      child: Text('Thurs',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),


                                    ),
                                    Container(
                                      width: width*0.09,
                                      child: Card(
                                        margin: EdgeInsets.only(left: 7.0,top: 2.0),
                                        color: Colors.grey,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5.0,top: 2.0),
                                          child: Text('1',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: width*0.03,top: height*0.01),
                                      child: Text('Fri',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),


                                    ),
                                    Container(
                                      width: width*0.09,
                                      child: Card(
                                        margin: EdgeInsets.only(left: 7.0,top: 2.0),
                                        color: Colors.grey,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5.0,top: 2.0),
                                          child: Text('1',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: width*0.03,top: height*0.01),
                                      child: Text('Sat',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),


                                    ),
                                    Container(
                                      width: width*0.09,
                                      child: Card(
                                        margin: EdgeInsets.only(left: 7.0,top: 2.0),
                                        color: Colors.grey,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5.0,top: 2.0),
                                          child: Text('1',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
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


                    Container(
                      width: width,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: width*0.09,top: height*0.035),
                                      child: Text('Morning',
                                        style: TextStyle(
                                          fontSize: 27.0,
                                          color: Colors.purple,
                                          fontWeight: FontWeight.w600,
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: width*0.05,top: height*0.01),
                                      height: height*0.07,
                                      width:  width*0.4,
                                      child: Card(
                                        color: Colors.grey.shade300,

                                        child: Container(
                                          margin: EdgeInsets.only(left: width*0.03,top: height*0.015),
                                          child: Text('6.30 to 7.30',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: width*0.09,top: height*0.035),
                                      child: Text('Evening',
                                        style: TextStyle(
                                          fontSize: 27.0,
                                          color: Colors.purple,
                                          fontWeight: FontWeight.w600,
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: width*0.05,top: height*0.01),
                                      height: height*0.07,
                                      width:  width*0.4,
                                      child: Card(
                                        color: Colors.grey.shade300,

                                        child: Container(
                                          margin: EdgeInsets.only(left: width*0.03,top: height*0.015),
                                          child: Text('7.00 to 8.00',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          )
                        ],

                      ),
                    ),










                  ],
                ),

              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: width*0.10,top: height*0.03),
                          width: width*0.8,
                          height: height*0.06,
                          child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0,)),
                             primary: Colors.purple,


                           ),
                              onPressed:(){},
                              child: Text('Audio Call',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              )
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: width*0.10,top: height*0.03),
                          width: width*0.8,
                          height: height*0.06,

                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0,)),
                                primary: Colors.purple,


                              ),
                              onPressed:(){},
                              child: Text('Video Call',
                                style: TextStyle(
                                  fontSize: 22.0,
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
