import 'package:flutter/material.dart';

class Furniture extends StatelessWidget {
  const Furniture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FurnitureSTF(),
    );
  }
}

class FurnitureSTF extends StatefulWidget {

  const FurnitureSTF({Key? key}) : super(key: key);

  @override
  State<FurnitureSTF> createState() => _FurnitureSTFState();
}

class _FurnitureSTFState extends State<FurnitureSTF> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
   /// ya height and width hamari app ko responsive karti ha
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Container(

      margin: EdgeInsets.only(top: height * 0.05, left: width * 0.02),

      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(

            children: [
              Text('Best Furniture',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30.0,

                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.01, right: width * 0.10),
                child: Text('Perfect Choice!',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22.0,

                  ),
                ),
              ),
              ///search bar
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
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                      ),
                      onPressed: () {},
                      child: Text('Chair',
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Table',
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Chair',
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Lamp',
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Floor',
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                    ),
                  ),


                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width*0.02,vertical: height*0.03,),

                height: height*0.3,

                child:Card(
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0,),
                  ),
                  child: Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                         /// color: Colors.grey.shade100,
                          child: Image.asset('Assists/Images/red.png'),
                          height: height*0.4,
                          width: width*0.4,
                        ),
                        Container(
                           width: width*0.5,
                           margin: EdgeInsets.only(top: 20.0,),
                          child: Column(
                            children: [
                                Container(
                                  margin: EdgeInsets.only(right: 90.0,),
                                  child: Text('Irul Sofa',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 110.0,),
                                  child: Text('by Seto',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400,

                                      ),
                                  ),
                                ),

                              Container(
                                width: width*1.5,
                                margin: EdgeInsets.only(top: 14.0,left: 4.0,),
                                child: Text('Edjonomical for all humans for body curve',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: height*0.07),
                                child: Row(
                                  children: [
                                    Container(
                                      // margin: EdgeInsets.only(top: 22.0,),
                                      child: Text('102.00',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    /// buy btn ka container
                                    Container(
                                      margin: EdgeInsets.only(left: 40.0,),
                                      height: height*0.05,
                                      width: width*0.2,
                                      child: ElevatedButton(onPressed:(){},
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(20.0),
                                          ),
                                          primary: Colors.black,
                                        ),
                                        child: Text('Buy',
                                          style: TextStyle(
                                            fontSize: 16.0,


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
                  ),
                  
                     





                ),

              ),
              Container(


                margin: EdgeInsets.symmetric(horizontal: width*0.02,vertical: height*0.03,),

                height: height*0.3,

                child:Card(
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0,),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: height*0.01,),
                        child: Image.asset('Assists/Images/red.png'),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade100,

                        ),
                        height: height*0.4,
                        width: width*0.4,
                      ),
                      Container(
                        width: width*0.5,
                        margin: EdgeInsets.only(top: 20.0,),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 90.0,),
                              child: Text('Irul Sofa',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 110.0,),
                              child: Text('by Seto',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                            ),

                            Container(
                              width: width*1.5,
                              margin: EdgeInsets.only(top: 14.0,left: 4.0,),
                              child: Text('Edjonomical for all humans for body curve',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: height*0.07),
                              child: Row(
                                children: [
                                  Container(
                                    // margin: EdgeInsets.only(top: 22.0,),
                                    child: Text('79.00',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  /// buy btn ka container
                                  Container(
                                    margin: EdgeInsets.only(left: 50.0,),
                                    height: height*0.05,
                                    width: width*0.2,
                                    child: ElevatedButton(onPressed:(){},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        primary: Colors.black,



                                      ),

                                      child: Text('Buy',
                                        style: TextStyle(
                                          fontSize: 16.0,
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







                ),

              ),
              Container(


                margin: EdgeInsets.symmetric(horizontal: width*0.02,vertical: height*0.03,),

                height: height*0.25,

                child:Card(
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0,),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                       margin: EdgeInsets.symmetric(vertical: height*0.01,horizontal: width*0.02),
                        child: Card(
                          child: Image.asset('Assists/Images/red.png',
                          height: height*0.40,
                            width: width*0.35,
                          ),
                          color: Colors.grey.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),
                      Container(
                        width: width*0.5,
                        margin: EdgeInsets.only(top: 20.0,),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 90.0,),
                              child: Text('Irul Sofa',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 110.0,),
                              child: Text('by Seto',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                            ),

                            Container(
                              width: width*1.5,
                              margin: EdgeInsets.only(top: 14.0,left: 4.0,),
                              child: Text('Edjonomical for all humans for body curve',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: height*0.03),
                              child: Row(
                                children: [
                                  Container(
                                    // margin: EdgeInsets.only(top: 22.0,),
                                    child: Text('102.00',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  /// buy btn ka container
                                  Container(
                                    margin: EdgeInsets.only(left:height*0.05),
                                    height: height*0.05,
                                    width: width*0.2,
                                    child: ElevatedButton(onPressed:(){},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        primary: Colors.black,
                                      ),

                                      child: Text('Buy',
                                        style: TextStyle(
                                          fontSize: 16.0,
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







                ),

              ),



            ],
          ),
        ),
      ),
    );
  }
}

