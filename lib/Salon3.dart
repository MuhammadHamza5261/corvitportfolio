import 'package:flutter/material.dart';
class salon3 extends StatefulWidget {
  const salon3({Key? key}) : super(key: key);

  @override
  State<salon3> createState() => _salon3State();
}

class _salon3State extends State<salon3> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                          child: Text('Welcome',
                            style: TextStyle(
                              fontSize: 23.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:23.0,top: 10.0,),
                          child: Text('Log in to get started',
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
                margin: EdgeInsets.only(left: 23.0,top: 24.0,),
                child: Row(
                  children: [
                    Container(
                      child: Text('Email',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ///4th row
              Container(
                margin: EdgeInsets.only(top: 10.0,),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: new InputDecoration(
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                      borderSide: new BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
              ),
              ///5th row
              Container(
                margin: EdgeInsets.only(left: 23.0,top: 15.0,),
                child: Row(
                  children: [
                    Container(
                      child: Text('Password',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ///6th row
              Container(
                margin: EdgeInsets.only(top: 10.0,),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: new InputDecoration(
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                      borderSide: new BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
              ),
              ///7th row
              Container(
                margin: EdgeInsets.only(left: 23.0,top: 15.0,),
                child: Row(
                  children: [
                    Container(
                      child: Text('Forgot Password?',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ///8th row
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15.0,left: 17.0,),
                      width:width*0.9,
                      height: height*0.07,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0,),),
                          primary: Colors.purple,

                        ),
                        onPressed: (){},
                        child: Text('Login',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ///9th row
              Container(
                margin: EdgeInsets.only(left: 80.0,top: 20.0,),
                child: Row(
                  children: [
                    Container(
                      child: Text('Dont have an account?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 7.0,),
                      child: Text('Sign up',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 16.0,
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
    );
  }
}
