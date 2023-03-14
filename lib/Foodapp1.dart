import 'package:flutter/material.dart';
class foodappp1 extends StatelessWidget {
  const foodappp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: foodappSTF(),
      backgroundColor: Colors.black87,
    );
  }
}
///stf
class foodappSTF extends StatefulWidget {
  const foodappSTF({Key? key}) : super(key: key);

  @override
  State<foodappSTF> createState() => _foodappSTFState();
}

class _foodappSTFState extends State<foodappSTF> {
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
              margin: EdgeInsets.only(top: 17.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0,),
                    child: Card(
                      child: Icon(Icons.label_important_outline_sharp,size: 40.0,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0,),
                    width: width*0.15,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                      child: Image.asset('Assists/Images/burger2.png'),
                    ),
                  ),
                ],
              ),
            ),
            ///2nd row
            Container(
              margin: EdgeInsets.only(top: 20.0,left: 20.0,),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text('Get your Food',
                          style: TextStyle(
                            fontSize: 32.0,
                            color: Colors.white,

                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 50.0,),
                        child: Text('Delievered!',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ///single child
           Container(
             margin: EdgeInsets.only(top: 13.0,),
             child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   Container(
                     width: width*0.22,
                     height: height*0.07,
                     child: Card(
                       color: Colors.red,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23.0,)),
                       child: Container(
                         margin: EdgeInsets.only(left: 20.0,top: 10.0,),
                         child: Text('All',
                           style: TextStyle(
                             fontSize: 25.0,
                             color: Colors.white,
                           ),
                         ),
                       ),
                     ),
                   ),
                   Container(
                     width: width*0.44,
                     height: height*0.065,
                     child: Card(
                       color:Colors.white54,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                       child: Stack(
                         children: [
                           Container(
                             width: width*0.08,
                             margin: EdgeInsets.only(left: 10.0,),
                             child: CircleAvatar(
                               backgroundColor: Colors.white,
                               radius: 50,
                               child: Image.asset('Assists/Images/burger2.png'),
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: 57.0,top: 8.0,),
                             child: Text('Burger',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20.0,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   Container(

                     width: width*0.44,
                     height: height*0.065,
                     child: Card(
                       color:Colors.white54,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                       child: Stack(
                         children: [
                           Container(
                             width: width*0.08,
                             margin: EdgeInsets.only(left: 10.0,),
                             child: CircleAvatar(
                               backgroundColor: Colors.white,
                               radius: 50,
                               child: Image.asset('Assists/Images/pizza.png'),
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: 57.0,top: 8.0,),
                             child: Text('Pizza',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20.0,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ],
               ),

             ),
           ),
            /// 4th row single card
            Container(
              margin: EdgeInsets.only(top: 10.0,),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.only(right: 180.0,),
                  width: width,
                  height: height*0.35,
                  child: Card(
                    color: Colors.white54,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 130,top: 4.0,),
                          child: Icon(Icons.heart_broken,color: Colors.red,size: 35.0,),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white54,
                                    radius: 86,
                                    child: Image.asset('Assists/Images/pizza.png'),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 80.0,top: 5.0,),
                                  child: Text('Pizza',
                                    style: TextStyle(
                                      fontSize: 23.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 33.0,),
                                  child: Text('Chicken Cheese',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white60
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 37.0,),
                                        child: Text("2200 Rs",
                                          style: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5.0,),
                                        width: width*0.11,
                                        height: height*0.049,
                                        child: Card(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0,)),
                                          color: Colors.red,
                                          child: Container(
                                            margin: EdgeInsets.only(left: 11.0,top: 3.2,),
                                            child: Text('+',
                                              style: TextStyle(
                                                fontSize: 19.0,
                                                color: Colors.white,
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
                            Container(
                              margin: EdgeInsets.only(left: 20.0,),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 7.0,),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white54,
                                      radius: 80,
                                      child: Image.asset('Assists/Images/burger2.png'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 20.0,top: 10.0,),
                                    child: Text('Petty Burger',
                                      style: TextStyle(
                                        fontSize: 23.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 33.0,),
                                    child: Text('Chicken Cheese',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.white60
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 37.0,),
                                          child: Text("1500 Rs",
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5.0,),
                                          width: width*0.11,
                                          height: height*0.049,
                                          child: Card(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0,)),
                                            color: Colors.red,
                                            child: Container(
                                              margin: EdgeInsets.only(left: 11.0,top: 3.2,),
                                              child: Text('+',
                                                style: TextStyle(
                                                  fontSize: 19.0,
                                                  color: Colors.white,
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


                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ///5th row
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0,top: 12.0,),
                    child: Text('Top Food Deals',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0,left: 70.0,),
                    child: Text('View All',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0,right: 20.0,),
                    width: width*0.09,
                    height: height*0.04,
                    child: Card(
                      color: Colors.red,
                      child: Container(
                        margin: EdgeInsets.only(left: 6.0,bottom: 2.0,),
                        child: Text('>',
                          style: TextStyle(
                            fontSize: 23.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///6th row
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: width*0.5,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                        child: Card(
                          color: Colors.black87,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                          child: Image.asset('Assists/Images/bp.png'),
                        ),

                      ),
                    ),
                    Container(
                      width: width*0.5,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                        child: Card(
                          color: Colors.black87,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                          child: Container(
                              child: Image.asset('Assists/Images/coke.png')),
                        ),

                      ),
                    ),
                    Container(
                      width: width*0.5,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                        child: Card(
                          color: Colors.black87,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                          child: Container(
                            width: width*0.1,
                              child: Image.asset('Assists/Images/eggs.png')),
                        ),

                      ),
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

