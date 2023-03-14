import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/ProjectScreenOne.dart';
import 'package:project/projectscreensix.dart';
class projectloginform extends StatelessWidget {
  const projectloginform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: screenfiveSTF(),
    );
  }
}
///stf
class screenfiveSTF extends StatefulWidget {
  const screenfiveSTF({Key? key}) : super(key: key);

  @override
  State<screenfiveSTF> createState() => _screenfiveSTFState();
}

class _screenfiveSTFState extends State<screenfiveSTF> {
  late double height;
  late double width;
  ///sab sa pehla text editing controller
  ///
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  ///ab user ki registration k lie ak function bnaan ha
  void register() async{
    DatabaseReference database = FirebaseDatabase.instance.ref();
    UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text
    );
    if(user.user !=null){
      print(user.user!.uid);
      await database.child('Products/user3').child(user.user !.uid).set({
        "email": email.text,
        "password": password.text
      });



    }


  }





  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height*0.4,
                  child: Image.asset('Assists/Images/phys.jpg',fit: BoxFit.fill,),
                ),
                Container(
                  ///con ko round decoration sa karta han
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0,),
                    color: Colors.black,
                  ),
                  margin: EdgeInsets.only(top: height*0.3,left: width*0.029,right: width*0.029),
                  width: width,
                  height: height*0.5,
                  child:Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: width*0.05,top: height*0.03,),
                        child: Text('Login Now ',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ///2nd row
                      ///3rd row
                      Container(
                        margin: EdgeInsets.only(left: width*0.07,top:height*0.02),
                        child: TextField(
                          controller: email,
                          keyboardType: TextInputType.name,
                          autofocus: false,
                          style: TextStyle(
                            color: Colors.white
                          ),
                          decoration: InputDecoration(
                            hintText: 'Enter Email',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            border: InputBorder.none,

                          ),
                        ),
                      ),
                      ///line
                      Container(
                        height: height*0.002,
                        width: width*0.8,
                        color: Colors.white,
                      ),
                      ///4th row

                      ///5th row
                      Container(
                        margin: EdgeInsets.only(left: width*0.07,top: height*0.02),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          controller: password,
                          keyboardType: TextInputType.name,
                          autofocus: false,

                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            hintText: 'Enter Password',
                            border: InputBorder.none,

                          ),
                        ),
                      ),
                      ///line
                      Container(
                        height: height*0.002,
                        width: width*0.8,
                        color: Colors.white,
                      ),
                      ///bytton row
                      Container(
                        margin: EdgeInsets.only(top: height*0.04,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: width*0.32,
                              height: height*0.065,
                              child: ElevatedButton(
                                onPressed: (){
                                  register();
                                  Navigator.pushNamed(context, '/projecthomescreen');


                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    shadowColor: Colors.green,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,))

                                ),
                                child: Text('Login Now',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ///last line
                      Container(
                        margin: EdgeInsets.only(top: height*0.03,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text('Already Have an Account?',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(left: width*0.01,),
                                child: Text('Sign Up',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.pushNamed(context, '/projectsignup');

                              },
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



    );
  }
}

