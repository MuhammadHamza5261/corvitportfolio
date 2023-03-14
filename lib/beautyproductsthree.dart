import 'package:flutter/material.dart';

class beautythree extends StatelessWidget {
  const beautythree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD8D7DB),
      body: beautythreeSTF(),
    );
  }
}
///STF

class beautythreeSTF extends StatefulWidget {
  const beautythreeSTF({Key? key}) : super(key: key);

  @override
  State<beautythreeSTF> createState() => _beautythreeSTFState();
}

class _beautythreeSTFState extends State<beautythreeSTF> {
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
              margin: EdgeInsets.only(top: 20.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0,),
                    child: Icon(Icons.arrow_back_ios_outlined),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0,),
                    width: width*0.08,
                   child: Image.asset('Assists/Images/w.png'),
                  ),
                ],
              ),
            ),
            Container(
              height: height*0.47,
              width: width*0.9,
              margin: EdgeInsets.only(left: 25.0,),
              child: Image.asset('Assists/Images/nature.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*0.2,
                    height: height*0.11,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        children: [
                          Container(
                            width: width*0.2,
                            child: Image.asset('Assists/Images/nature.png'),
                          ),
                          Container(
                            child: Text('Vegon'),
                          ),
                        ],
                        
                      ),
                    ),
                  ),
                  Container(
                    width: width*0.2,
                    height: height*0.11,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                      child: Column(
                        children: [
                          Container(
                            width: width*0.2,
                            child: Image.asset('Assists/Images/nature.png'),
                          ),
                          Container(
                            child: Text('Vegon'),
                          ),
                        ],

                      ),
                    ),
                  ),
                  Container(
                    width: width*0.2,
                    height: height*0.11,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                      child: Column(
                        children: [
                          Container(
                            width: width*0.2,
                            child: Image.asset('Assists/Images/red.png'),
                          ),
                          Container(
                            child: Text('Vegon'),
                          ),
                        ],

                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              height: height*0.264,
              margin: EdgeInsets.only(top: 30.0,),

              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0,)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 36.0,),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30.0,),
                                child: Text('Facial Clenser',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0,left: 25.0,),
                                child: Text('Size: 760 fl oz/225ml',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 30.0,right: 20.0,),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(Icons.star),
                                    ),
                                    Container(
                                      child: Icon(Icons.star),
                                    ),
                                    Container(
                                      child: Icon(Icons.star),
                                    ),
                                    Container(
                                      child: Icon(Icons.star),
                                    ),
                                    Container(
                                      child: Icon(Icons.star),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0,),
                                child: Text('(132 Reviews)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.0,
                                  ),


                                ),
                              ),
                            ],
                          ),



                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 37.0,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 35.0,),
                            child: Text('\$9.99',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(Icons.remove),
                          ),
                          Container(
                            child:Text('1'),
                          ),
                          Container(
                            child: Icon(Icons.add),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 28.0,),
                            width: width*0.2,
                            height: height*0.065,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black87,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0,))
                              ),
                                onPressed:(){},
                                child: Text('Cart',
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
            ),

          ],
        ),
      ),


    );
  }
}

