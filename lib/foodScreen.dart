import 'package:flutter/material.dart';
/// sab sa pehla stl widget
class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FoodScreenSTF(),
    );
  }
}
///os ka bad stf widget
class FoodScreenSTF extends StatefulWidget {
  const FoodScreenSTF({Key? key}) : super(key: key);
  @override
  State<FoodScreenSTF> createState() => _FoodScreenSTFState();
}
class _FoodScreenSTFState extends State<FoodScreenSTF> {
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
           margin: EdgeInsets.only(top: 20.0,),
           child: Container(
             margin: EdgeInsets.only(top: 30.0,),
             child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   mainAxisSize: MainAxisSize.max,
                   children: [
                     Icon(Icons.settings_applications_sharp,size: 50.0,color: Colors.blue,),
                     Icon(Icons.fastfood,size: 50.0,color: Colors.redAccent,),
                   ],
                 ),
                 Column(
                   children: [
                     Text('LETS EAT',style: TextStyle(color: Colors.deepPurple,fontSize: 30.0,fontWeight: FontWeight.bold),),
                     Text('QUALITY FOOD',
                       style: TextStyle(
                         fontSize: 17.0,
                         fontWeight: FontWeight.w300,
                         color: Colors.green,
                       ),
                     ),
                   ],
                 ),
                /// search bar
                 Container(
                   margin: EdgeInsets.only(top: 25, left: 25, right: 25),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Flexible(
                             flex: 1,
                             child: TextField(
                               cursorColor: Colors.grey,
                               decoration: InputDecoration(
                                   fillColor: Colors.white,
                                   filled: true,
                                   border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(10),
                                       borderSide: BorderSide.none
                                   ),
                                   hintText: 'Search',
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
                           Container(
                               margin: EdgeInsets.only (left: 10),
                               // padding: EdgeInsets.all(15),
                               decoration: BoxDecoration(
                                   color: Colors.white10,
                                   borderRadius: BorderRadius.circular(15)
                               ),
                               child: Icon(Icons.filter_1_rounded),
                               width: 25
                           ),
                         ],
                       )
                     ],
                   ),
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                   children: [
                     Container(
                       margin: EdgeInsets.only(top: 35),
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           primary: Colors.yellowAccent,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(5.0),
                           ),
                         ),
                         onPressed: () {},
                         child: Text('Fast Food',
                           style: TextStyle(
                             color: Colors.black87,
                             fontSize: 20.0,
                           ),),

                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(top: 37),
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           primary: Colors.pinkAccent,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(5.0),
                           ),
                         ),
                         onPressed: () {},
                         child: Text('Fruit Item',
                           style: TextStyle(
                             color: Colors.black87,
                             fontSize: 20.0,
                           ),),
                       ),
                     ),
                   ],
                 ),
                 Column(
                   children: [
                     Container(
                       margin: EdgeInsets.only(top: 20.0,right: 170.0,),
                       width: width*0.5,
                       height: height*0.3,
                       child: Card(
                         child: Image.asset('Assists/Images/red.png'),
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
    );
  }
}


