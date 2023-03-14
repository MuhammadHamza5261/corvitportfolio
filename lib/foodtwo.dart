import 'package:flutter/material.dart';
class foodtwo extends StatelessWidget {
  const foodtwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: foodtwoSTF(),
    );
  }
}
class foodtwoSTF extends StatefulWidget {
  const foodtwoSTF({Key? key}) : super(key: key);

  @override
  State<foodtwoSTF> createState() => _foodtwoSTFState();
}

class _foodtwoSTFState extends State<foodtwoSTF> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 65.0,left: 30.0,),
                  child: Text('My Order',style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.0),
                  child: Text('3 items',style: TextStyle(
                    fontSize: 20.0,
                  ),),
                ),
               Container(
                 margin: EdgeInsets.only(top: 30.0,),
                 height: height*0.3,
                 width: width,
                 child: Card(
                   child: Row(
                     children: [
                       Container(
                         margin: EdgeInsets.only(top: 50.0,left: 16.0,),
                         child: Column(
                           children: [
                             Text('Summer Sale',style: TextStyle(
                               fontSize: 26.0,

                             ),),
                             Container(
                               margin: EdgeInsets.only(top: 10.0,),
                               child: Text('25% OFF',style: TextStyle(
                                 fontSize: 30.0,
                               ),),
                             ),
                             Column(
                               children: [
                                 Container(
                                   margin: EdgeInsets.only(top: 20.0,),
                                   width: width*0.4,
                                   height: height*0.06,
                                   child: ElevatedButton(
                                     style: ElevatedButton.styleFrom(
                                       primary: Colors.grey.shade100,
                                       shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(5.0),
                                       ),
                                     ),
                                     onPressed: () {},
                                     child: Text('sum4osa',
                                       style: TextStyle(
                                         color: Colors.green,
                                         fontSize: 20.0,
                                       ),),

                                   ),
                                 ),
                               ],

                             ),
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(top: 5.0,left: 30.0,),
                         width: width*0.4,
                         height: height*0.7,
                         child: Column(
                           children: [
                             Image.asset('Assists/Images/orange.png'),

                           ],

                         ),
                       ),

                     ],

                   ),


                 ),

               ),
                Container(
                  margin: EdgeInsets.only(bottom: 80.0,left: 20.0,),
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 200.0,),
                        width: width*0.4,
                        child: Image.asset('Assists/Images/anar.png'),
                      ),
                        Container(
                          margin: EdgeInsets.only(left: 70.0,),

                          child: Column(
                            children: [
                              Container(
                               /// padding: const EdgeInsets.only(bottom: 20.0),
                                margin: EdgeInsets.only(left: 50.0,),
                                  child: Text('Pink Negroni',style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                ),
                              Container(
                                margin: EdgeInsets.only(top: 10.0,),
                                child: Text('RS..//10.95',style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),),
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
    );
  }
}

