import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:project/newapptwo.dart';

class newapp extends StatelessWidget {
  const newapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: neewappSTF(),
      extendBody: true,
    );
  }
}

///Statefull start
class neewappSTF extends StatefulWidget {
  const neewappSTF({Key? key}) : super(key: key);

  @override
  State<neewappSTF> createState() => _neewappSTFState();
}

class _neewappSTFState extends State<neewappSTF> {
  late double height;
  late double width;

  String name = "";
  String date = "";

  final database = FirebaseDatabase.instance.ref();

  late DataSnapshot snapshot;

  @override
  void initState() {
    super.initState();

    // getData();
    // sendPostData();
    // getPostData();
  }

  void getData() async {
    snapshot = await database
        .child('users/uid')
        .child(FirebaseAuth.instance.currentUser!.uid)
        .get();

    Map<dynamic, dynamic> map = snapshot.value as Map<dynamic,dynamic>;


    if (snapshot.exists) {
      // print(snapshot.value);
      print(map['Username']);
      print(map['name']);
      name = map['name'];

      setState(() {
        print(map['name']);
      });
    }
  }

  Future getPostData() async {
    snapshot = await database
        .child('Posts')
        .child(FirebaseAuth.instance.currentUser!.uid)
        .get();
    // Map<dynamic, dynamic> map = snapshot.value as Map<dynamic, dynamic>;

    if (snapshot.exists) {
      // print(snapshot.value);
      print(snapshot.value);
      print('--------Fun finshed--------');
    }
    return snapshot.value;
  }

  void sendPostData() async {
    await database
        .child('Posts').child(FirebaseAuth.instance.currentUser!.uid).
         push()
        .set({
      "Image": "",
      "description": "Sample Posts",
      "likes": "88",
      "dateTime": "234234",
      "Comments": [
        {
          "uid": "uid",
          "dateTime": "3454366234235",
          "Likes": "3",
          "text": "Nice pic",
        },
        {
          "uid": "uid",
          "dateTime": "3454366234235",
          "Likes": "45",
          "text": "Nice pic",
        },
      ]
    });
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            ///First row
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ///user name from db

                  Container(
                    child: Text(
                      'piqobe' + name,
                      style: TextStyle(
                          fontSize: 45.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width * 0.10),
                    child: Icon(
                      Icons.settings,
                      size: 30.0,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.notification_add_rounded,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => newapptwo()));
                    },
                    child: Container(
                      child: Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///list view builder
            Container(
              margin:
                  EdgeInsets.only(top: height * 0.02, bottom: height * 0.04),
              height: height * 0.13,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    height: height * 0.15,
                    width: width * 0.20,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: width * 0.04),
                              height: 70,
                              width: 70,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(14.0),

                                child: Image.asset('Assists/Images/red.png'),

                                ),
                              ),
                          Container(
                            child: Text('Story'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            /// Future builder
           Container(
             child: Container(
               child: FutureBuilder(
                 future: getPostData(),
                   builder: (BuildContext context,AsyncSnapshot snapshot) {
                   if(snapshot.connectionState==ConnectionState.waiting){
                     return Container(
                       child: Container(
                         width: width*0.3,
                         child: LoadingIndicator(
                             indicatorType: Indicator.ballPulse, /// Required, The loading type of the widget
                             colors: const [Colors.red,Colors.blue,Colors.green],       /// Optional, The color collections
                             strokeWidth: 2,                     /// Optional, The stroke of the line, only applicable to widget which contains line
                             backgroundColor: Colors.white,      /// Optional, Background of the widget
                             pathBackgroundColor: Colors.white   /// Optional, the stroke backgroundColor
                         ),
                       ),
                     ) ;
                   }else{


                     Map<dynamic,dynamic> map1 = snapshot.data as Map<dynamic,dynamic>;

                     List<String>Likes=[

                     ];
                     List<String>dateTime=[

                     ];
                     List<String>Description=[

                     ];
                     List<String>Images=[
                     ];

                     int count=0;
                     map1.forEach((key, value) {
                       print(value['dateTime']);
                       count++;
                       Likes.add(value['likes']);
                       dateTime.add(value['dateTime']);
                       Description.add(value['description']);
                       Images.add(value['image']);
                     });
                     return Container(
                       height: height * 0.6,
                       child: ListView.builder(
                         scrollDirection: Axis.vertical,
                         itemCount: count,
                         itemBuilder: (BuildContext context, index) {
                           ///main containner
                           return ClipRRect(
                             borderRadius: BorderRadius.circular(100),
                             child: Container(
                               color: Colors.grey.shade200,
                               margin: EdgeInsets.only(top: height * 0.04),
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(100),
                                 child: Container(
                                   padding: EdgeInsets.all(18),
                                   child: Card(
                                     child: Column(
                                       children: [
                                         Container(
                                           child: Text(Description[index]),
                                         ),
                                         Row(
                                           children: [
                                             Container(
                                               margin: EdgeInsets.only(
                                                   left: width * 0.02,
                                                   top: height * 0.01),
                                               child: ClipRRect(
                                                 borderRadius:
                                                 BorderRadius.circular(20.0),
                                                 child: Container(
                                                   width: width * 0.2,
                                                   child: Image.network(
                                                       Images[index]),
                                                 ),
                                               ),
                                             ),

                                             ///first row text
                                             Container(
                                               margin:
                                               EdgeInsets.only(left: width * 0.02),
                                               child: Column(
                                                 children: [
                                                   Container(
                                                     margin: EdgeInsets.only(
                                                         top: height * 0.01),
                                                     child: Text('Steve Johnson'),
                                                   ),
                                                   Container(
                                                     margin: EdgeInsets.only(
                                                         top: height * 0.02),
                                                     child: Text(dateTime[index]),
                                                   ),
                                                 ],
                                               ),
                                             ),

                                             ///icon in first row
                                             Container(
                                               margin:
                                               EdgeInsets.only(left: width * 0.1),
                                               child: Icon(
                                                 Icons.more,
                                               ),
                                             ),
                                           ],
                                         ),
                                         Container(
                                           child: Container(
                                             padding: EdgeInsets.all(40),
                                             child: ClipRRect(
                                               borderRadius: BorderRadius.circular(40),
                                               child: Image.network(
                                                   Images[index]),
                                             ),
                                           ),
                                         ),

                                         ///like comment or share icons
                                         Container(
                                           margin:
                                           EdgeInsets.only(bottom: height * 0.03),
                                           child: Row(
                                             children: [
                                               ///heart icon
                                               Row(
                                                 children: [
                                                   Container(
                                                     margin: EdgeInsets.only(
                                                         left: width * 0.01),
                                                     child: Icon(
                                                       Icons.favorite,
                                                       color: Colors.pink,
                                                       size: 24.0,
                                                       semanticLabel:
                                                       'Text to announce in accessibility modes',
                                                     ),
                                                   ),
                                                   Container(
                                                     child:Text(Likes[index]),
                                                   ),
                                                 ],
                                               ),

                                               ///message icon
                                               Container(
                                                 margin: EdgeInsets.only(
                                                     left: width * 0.02),
                                                 child: Icon(
                                                   Icons.chat,
                                                   size: 24.0,
                                                   semanticLabel:
                                                   'Text to announce in accessibility modes',
                                                 ),
                                               ),

                                               ///Share icon
                                               Container(
                                                 margin: EdgeInsets.only(
                                                     left: width * 0.02),
                                                 child: Icon(
                                                   Icons.share,
                                                   size: 24.0,
                                                   semanticLabel:
                                                   'Text to announce in accessibility modes',
                                                 ),
                                               ),
                                               Container(
                                                 margin: EdgeInsets.only(
                                                     left: width * 0.5),
                                                 child: Icon(Icons.bookmark),
                                               ),
                                             ],
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           );
                         },
                       ),
                     ) ;

                   }


                   return Container(

                   );
                   }),
             ),

           ),
          ],
        ),
      ),
    );
  }
}
