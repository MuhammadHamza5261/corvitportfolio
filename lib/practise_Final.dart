import 'package:flutter/material.dart';
class practisefinal extends StatelessWidget {
  const practisefinal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: practisefinalSTF(),
    );
  }
}
///stF
class practisefinalSTF extends StatefulWidget {
  const practisefinalSTF({Key? key}) : super(key: key);

  @override
  State<practisefinalSTF> createState() => _practisefinalSTFState();
}

class _practisefinalSTFState extends State<practisefinalSTF> {
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
            ///1st row
            Container(
              margin: EdgeInsets.only(top: height*0.03,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: width*0.04),
                    child: Icon(Icons.do_not_disturb_on_total_silence_outlined,size: 40.0,color: Colors.white,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: width*0.04,),
                    child: Icon(Icons.search_sharp,size: 40.0,color: Colors.white,),
                  ),

                ],
              ),
            ),
            ///2nd row
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: height*0.06,left: width*0.05,),
                        child: Text('Every Bite a',
                          style: TextStyle(
                            fontSize: 33.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: height*0.0001),
                        child: Text('Better Burger!',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white70,

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
              margin: EdgeInsets.only(top: height*0.03,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('Burger',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    child: Text('Pasta',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    child: Text('Salad',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                      ),
                        onPressed: (){},
                        child: Text('More'),
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
                    width: width*0.5,
                    child: Column(
                      children: [
                        Container(
                          width: width*0.5,
                          child: Image.asset('Assists/Images/burger2.png'),
                        ),
                        Container(
                          child: Text('Beef Burger',
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Text('Onion with cheese',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                           /// mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 35.0,),
                                child: Text('18.00',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 40.0,),
                                child: Icon(Icons.add,color: Colors.white,size: 25.0,),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width*0.5,
                    child: Column(
                      children: [
                        Container(
                          width: width*0.5,
                          child: Image.asset('Assists/Images/burger2.png'),
                        ),
                        Container(
                          child: Text('Beef Burger',
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Text('Onion with cheese',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                           /// mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40.0,),
                                child: Text('18.00',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 40.0),
                                child: Icon(Icons.add,color: Colors.white,size: 25.0,),
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


          ],
        ),
      ),
    );
  }
}

