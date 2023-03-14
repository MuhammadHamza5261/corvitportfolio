import 'package:flutter/material.dart';
import 'package:project/beautyproductsthree.dart';

class beautytwo extends StatelessWidget {
  const beautytwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD8D7DB),
      body: beautytwoSTF(),
    );
  }
}
class beautytwoSTF extends StatefulWidget {
  const beautytwoSTF({Key? key}) : super(key: key);

  @override
  State<beautytwoSTF> createState() => _beautytwoSTFState();
}

class _beautytwoSTFState extends State<beautytwoSTF> {
  late double width;
  late double height;






















  
  @override
  Widget build(BuildContext context) {

    width= MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14.0,),
                      child: Text('Search Products',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(

                      width: width*0.15,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0,)),
                        child: Image.asset('Assists/Images/1.png'),
                      ),
                    ),
                  ],
                ),
              ),
              ///SEARCH BAR
              Container(
                width: width*0.9,

                margin: EdgeInsets.only(top: 20,left: 7.0, right: 10.0,),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: TextField(
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                fillColor: Colors.white70,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none
                                ),
                                hintText: 'Cleansers',
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
                            child: Icon(Icons.filter),
                            width: 25
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  ///first column
                  Container(
                    width: width*0.45,
                    child: Column(
                      children: [
                          Container(
                            margin: EdgeInsets.only(top: 25.0,right: 55.0,),
                            child: Text('Found',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10.0,),
                            child: Text('10 Results',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),

                            ),
                          ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>beautythree()),);

                          },
                          child: Container(
                            height: height*0.3,
                            ///width: width*0.5,
                            margin: EdgeInsets.only(top: 20.0,),
                            child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                              child: Column(
                                children: [
                                  Container(
                                    width: width*0.4,

                                    child: Image.asset('Assists/Images/1.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10.0,),
                                    child: Text('Facial Clenser',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 6.0,top: 3.0,),
                                    child: Text('Citrus refrehness senses',
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 6.0,left: 20.0,),
                                        child: Text('\$9.99',
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
                        ),
                        Container(
                          height: height*0.3,
                          margin: EdgeInsets.only(top: 20.0,),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                            child: Column(
                              children: [
                                Container(
                                  width: width*0.4,
                                  height: height*0.2,
                                  child: Image.asset('Assists/Images/2.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 4.0,),
                                  child: Text('Micellar Cleansing',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 3.0,right: 9.0,),
                                  child: Text('Citrus refrehness senses',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 7.0,left: 13.0,),
                                      child: Text('\$9.99',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 1.0,left: 55.0,),
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
                          height: height*0.3,
                          margin: EdgeInsets.only(top: 20.0,),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                            child: Column(
                              children: [
                                Container(
                                  width: width*0.4,
                                  height: height*0.2,
                                  child: Image.asset('Assists/Images/1.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10.0,),
                                  child: Text('Facial Clenser',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 6.0,top: 3.0,),
                                  child: Text('Citrus refrehness senses',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 7.0,left: 20.0,),
                                      child: Text('\$9.99',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 1.0,left: 50.0,),
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
                          height: height*0.3,
                          margin: EdgeInsets.only(top: 20.0,),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                            child: Column(
                              children: [
                                Container(
                                  width: width*0.4,
                                  height: height*0.2,
                                  child: Image.asset('Assists/Images/2.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10.0,),
                                  child: Text('Facial Clenser',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 6.0,top: 3.0,),
                                  child: Text('Citrus refrehness senses',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 7.0,left: 20.0,),
                                      child: Text('\$9.99',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 1.0,left: 50.0,),
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
                  ///2nd column
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: height*0.3,
                          margin: EdgeInsets.only(top: 20.0,),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                            child: Column(
                              children: [
                                Container(
                                  width: width*0.4,
                                  height: height*0.2,
                                  child: Image.asset('Assists/Images/3.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10.0,),
                                  child: Text('Facial Clenser',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 4.0,top: 3.0,),
                                  child: Text('Citrus refrehness senses',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 7.0,),
                                      child: Text('\$9.99',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 47.0,top: 1.0,),
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
                          height: height*0.3,
                          margin: EdgeInsets.only(top: 20.0,),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                            child: Column(
                              children: [
                                Container(
                                  width: width*0.4,
                                  height: height*0.2,
                                  child: Image.asset('Assists/Images/4.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10.0,),
                                  child: Text('Facial Clenser',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 6.0,top: 3.0,),
                                  child: Text('Citrus refrehness senses',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 7.0,),
                                      child: Text('\$9.99',
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
                          height: height*0.3,
                          margin: EdgeInsets.only(top: 20.0,),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                            child: Column(
                              children: [
                                Container(
                                  width: width*0.4,
                                  height: height*0.2,
                                  child: Image.asset('Assists/Images/3.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10.0,),
                                  child: Text('Facial Clenser',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 4.0,top: 3.0,),
                                  child: Text('Citrus refrehness senses',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 7.0,),
                                      child: Text('\$9.99',
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
                          height: height*0.3,
                          margin: EdgeInsets.only(top: 20.0,),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,)),
                            child: Column(
                              children: [
                                Container(
                                  width: width*0.4,
                                  height: height*0.2,
                                  child: Image.asset('Assists/Images/4.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10.0,),
                                  child: Text('Facial Clenser',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 4.0,top: 3.0,),
                                  child: Text('Citrus refrehness senses',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 7.0,),
                                      child: Text('\$9.99',
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

                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
