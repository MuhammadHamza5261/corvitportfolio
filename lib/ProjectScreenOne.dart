import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:project/projectscreentwo.dart';

import 'creditcard.dart';
class projectscreen extends StatelessWidget {
  const projectscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body:projectscreenSTF(),
    );
  }
}
class projectscreenSTF extends StatefulWidget {
  const projectscreenSTF({Key? key}) : super(key: key);

  @override
  State<projectscreenSTF> createState() => _projectscreenSTFState();
}

class _projectscreenSTFState extends State<projectscreenSTF> {
  late double width;
  late double height;
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35.0,left: 25.0,),
                    child: Text('Sessions',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ///inkwell
                  Container(
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.only(right: 20.0,top: 25.0,),
                        width: width*0.13,
                        height: height*0.06,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0,)),
                          child: Image.asset('Assists/Images/girl2.png'),
                        ),
                      ),
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>projectscreentwo()),);
                        },
                    ),
                  ),
                ],
              ),
            ),
            ///2ND ROW
            Container(
              margin: EdgeInsets.only(top: 20.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.0,),
                    child: Text('Active',
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.0,),
                    child: Text('Pending',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 35.0,),
                    child: Icon(Icons.notifications_active_sharp,color: Colors.redAccent,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 50.0,),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CreditCardPage()));
                      },
                      child: Text('Finished',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            ///line container
            Container(
              margin: EdgeInsets.only(top: 13.0),
              height: height*0.002,
              width: width*0.98,
              color: Colors.grey.shade500,
            ),
            ///black card
            Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0,),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33.0,)),
                color: Colors.black,
                child: Row(
                  children: [
                    Container(
                      width:width*0.2,
                      height: height*0.08,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0,)),
                        color: Colors.black,
                        child: Container(
                            child: Image.asset('Assists/Images/girl1.png')),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Text('Samantha Bloom',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 57.0,top: 2.0),
                          child: Text('Calling....',
                            style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                            ),
                          ),
                        ),

                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0,),
                      width: width*0.14,
                      height: height*0.06,
                      child: Card(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),

                        child: Icon(Icons.call_end,color: Colors.white,),
                      ),
                    ),
                    Container(
                      width: width*0.14,
                      height: height*0.06,
                      child: Card(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                        child: Icon(Icons.call,color: Colors.white,),
                      ),
                    ),
                  ],
                ),

              ),

            ),
            ///Search Bar
            Container(
              width: width*0.85,
              height: height*0.1,

              margin: EdgeInsets.only(top: 20,left: 7.0, right: 10.0,),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: TextField(
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none
                              ),
                              hintText: 'Search by name',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18
                              ),
                              prefixIcon: Container(
                                padding: EdgeInsets.all(15),
                                child: Icon(Icons.search),
                                width: 18,
                              )
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
            ///2 card Container
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.0,),
                    width:width*0.45,
                    height: height*0.25,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                      color: Colors.blue,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15.0,right: 45.0,),
                              child: Text('56%',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 52.0,),
                            child: Text('Success',
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.white60,
                              ),
                            ),
                          ),
                          Container(
                            height: height*0.12,

                            child:Image.asset('Assists/Images/graph.png'),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0,),
                    width:width*0.45,
                    height: height*0.25,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                      color: Colors.purpleAccent,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15.0,right: 45.0,),
                            child: Text('24',
                              style: TextStyle(
                                fontSize: 50.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 50.0,),
                            child: Text('Clients',
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.white60,
                              ),
                            ),
                          ),
                        Container(
                          margin: EdgeInsets.only(top: 30.0,left: 20.0,),
                          child: Row(
                            children: [
                              Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      width:width*0.15,
                                      height: height*0.06,
                                      child: Card(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                                        child: Container(
                                            height: height*0.05,

                                            child: Image.asset('Assists/Images/girl1.png')),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 22.0,),
                                      width:width*0.15,
                                      height: height*0.06,
                                      child: Card(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                                        child: Container(
                                          height: height*0.05,

                                            child: Image.asset('Assists/Images/girl2.png')),
                                      ),
                                    ),
                                    Container(

                                      margin: EdgeInsets.only(left: 47.0,),
                                      width:width*0.15,
                                      height: height*0.06,
                                      child: Card(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                                        child: Container(
                                            height: height*0.05,

                                            child: Image.asset('Assists/Images/girl1.png')),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 67.0,),
                                      width:width*0.15,
                                      height: height*0.06,
                                      child: Card(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                                        child: Container(
                                            height: height*0.05,

                                            child: Image.asset('Assists/Images/girl2.png')),
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
                ],
              ),
            ),
            ///LAST CARD
            Container(
              height: height*0.23,
              margin: EdgeInsets.only(left: 15.0,right: 15.0,top: 7.0,),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0,)),
                child: Column(
                  children: [
                    ///family therapy row
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20.0,top: 20.0,),
                            child: Text('Family Therapy',
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20.0,top: 22.0,),
                            child: Text('Tomorrow',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight:FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ///johnson family text row
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10.0,left: 17.0,),
                            child: Text('Johnson Family',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ///time row
                    Container(
                      margin: EdgeInsets.only(top: 6.0,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 17.0,),
                            child: Text('4:30pm to 6:00pm',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 90.0,),
                            child: Text('1h 30min',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16.0,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    ///images row
                    Container(
                      margin: EdgeInsets.only(top: 10.0,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20.0,),
                            child: Stack(
                              children: [
                                Container(
                                  width:width*0.15,
                                  height: height*0.06,
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                                    child: Container(
                                        height: height*0.05,

                                        child: Image.asset('Assists/Images/girl1.png')),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 22.0,),
                                  width:width*0.15,
                                  height: height*0.06,
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                                    child: Container(
                                        height: height*0.05,

                                        child: Image.asset('Assists/Images/girl2.png')),
                                  ),
                                ),
                                Container(

                                  margin: EdgeInsets.only(left: 47.0,),
                                  width:width*0.15,
                                  height: height*0.06,
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                                    child: Container(
                                        height: height*0.05,

                                        child: Image.asset('Assists/Images/girl1.png')),
                                  ),
                                ),


                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20.0,),
                            width: width*0.33,
                            height: height*0.05,
                            child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                              color: Colors.pinkAccent,
                              child: Container(
                                margin: EdgeInsets.only(top: 5.0,left: 5.0,),
                                child: Text('Group Therapy',
                                  style:TextStyle(
                                    fontSize: 15.0,
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
              ),
            ),
            ///LAST Bottom Bar
            Container(
              margin: EdgeInsets.only(top: 5.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.0,),
                    child: Icon(Icons.message_sharp,size: 30.0,),
                  ),
                  Container(
                    child: Icon(Icons.calendar_month_outlined,size: 30.0,),
                  ),
                  Container(
                    child: Icon(Icons.add_circle_rounded,size: 30.0,),
                  ),
                  Container(
                    child: Icon(Icons.person_add,size: 30.0,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 25.0,),
                    child: Icon(Icons.notifications,size: 30.0,),
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

