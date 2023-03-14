import 'package:flutter/material.dart';
class Deliciousfood extends StatelessWidget {
  const Deliciousfood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DeliciousfoodSTF(),
      backgroundColor: Color(0xFFD8D7DB),
    );
  }
}
///stf
class DeliciousfoodSTF extends StatefulWidget {
  const DeliciousfoodSTF({Key? key}) : super(key: key);

  @override
  State<DeliciousfoodSTF> createState() => _DeliciousfoodSTFState();
}

class _DeliciousfoodSTFState extends State<DeliciousfoodSTF> {
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Icon(Icons.shopping_cart,size: 40.0,),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0,),
                    child: Icon(Icons.list_outlined,size: 40.0,),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 37.0,),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35.0,),
                        child: Text('Delicious Food',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25.0,top: 3.0,),
                        child: Text('We made fresh and healthy food',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:15.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///4 icons
                  Container(
                    margin: EdgeInsets.only(left: 18.0,),
                    width: width*0.19,
                    height: height*0.09,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0,)),
                      child: Icon(Icons.fastfood_rounded,size: 40.0,),
                    ),
                  ),
                  Container(
                    width: width*0.19,
                    height: height*0.09,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0,)),
                      child: Icon(Icons.icecream_rounded,size: 40.0,),
                    ),
                  ),
                  Container(
                    width: width*0.19,
                    height: height*0.09,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0,)),
                      child: Icon(Icons.emoji_food_beverage,size: 40.0,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 18.0,),
                    width: width*0.19,
                    height: height*0.09,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0,)),
                      child: Icon(Icons.food_bank_sharp,size: 40.0,),
                    ),
                  ),

                ],
              ),
            ),
             Container(
               margin: EdgeInsets.only(top: 10.0,),
               child: Row(
                 children: [
                  Container(
                    width: width*0.5,
                    height: height*0.34,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                      child: Column(
                        children: [
                          Container(
                            width: width*0.79,
                            height: height*0.2,

                            child: Image.asset('Assists/Images/t.png'),
                          ),
                          Container(
                            child: Text('Crab Reman',
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 22.0,),
                            child: Text('Spicy with garlic',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 6.0,left: 20.0,),
                                child: Text('\$24.00',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 50.0,top: 1.0,),
                                width: width*0.07,
                                child: Image.asset('Assists/Images/heart.png'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                   Container(
                     width: width*0.5,
                     height: height*0.34,
                     child: Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                       child: Column(
                         children: [
                           Container(
                             width: width*0.79,
                             height: height*0.2,



                             child: Image.asset('Assists/Images/t.png'),
                           ),
                           Container(
                             child: Text('Chicken Slice',
                               style: TextStyle(
                                 fontSize: 24.0,
                               ),
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(right: 55.0,),
                             child: Text('Real Chicken',
                               style: TextStyle(
                                 fontSize: 14.0,
                                 fontWeight: FontWeight.w300,
                               ),
                             ),
                           ),
                           Row(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(top: 6.0,left: 20.0,),
                                 child: Text('\$12.00',
                                   style: TextStyle(
                                     fontSize: 17.0,
                                     fontWeight: FontWeight.w800,
                                   ),
                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(left: 50.0,top: 1.0,),
                                 width: width*0.07,
                                 child: Image.asset('Assists/Images/heart.png'),
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
            Container(
              height: height*0.17,
              margin: EdgeInsets.only(top: 10.0,),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0,),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10.0,right: 23.0,),
                            child: Text('Eggs Curry',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5.0,left: 10.0,),
                            child: Text('Eggs To Tomato and sauce',
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8.0,right: 82.0,),

                            child: Text('\$15.00',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),

                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width*0.4,
                      height: height,
                      child: Image.asset('Assists/Images/t.png'),
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

