import 'package:flutter/material.dart';
class salon1 extends StatefulWidget {
  const salon1({Key? key}) : super(key: key);

  @override
  State<salon1> createState() => _salon1State();
}

class _salon1State extends State<salon1> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assists/Images/loginbg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100.0,),
                child: Text('LOGO',
                style: TextStyle(
                  fontSize: 42.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

                ),),
              ),
              ///2nd row
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right:34.0,top: 65.0,),
                          child: Text('Sign in As',
                            style: TextStyle(
                              fontSize: 23.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:23.0,top: 10.0,),
                          child: Text('Sign in to get started',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.white,
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
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30.0,left: 17.0,),
                      width:width*0.9,
                      height: height*0.07,
                      child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0,),),
                         primary: Colors.purple,

                       ),
                          onPressed: (){},
                          child: Text('Enterpreneur',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),

                          ),
                    ),
                    ),
                  ],
                ),
              ),
              ///4th row
              Container(
                margin: EdgeInsets.only(top: 20.0,),
                child: Text('Or',
                  style: TextStyle(
                    fontSize: 23.0,
                    color: Colors.white,
                  ),
                ),
              ),
              ///5th row
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30.0,left: 17.0,),
                      width:width*0.9,
                      height: height*0.07,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0,),),
                          primary: Colors.purple,

                        ),
                        onPressed: (){},
                        child: Text('Guest',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ///6th row
              Container(
                margin: EdgeInsets.only(top: 20.0,),
                child: Text('Skip for now',
                  style: TextStyle(
                    fontSize: 23.0,
                    color: Colors.white,
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
