import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/ProjectScreenOne.dart';
import 'package:project/projectscreensix.dart';
class screenfive extends StatelessWidget {
  const screenfive({Key? key}) : super(key: key);

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
  TextEditingController username = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController password = TextEditingController();

  ///ab user ki registration k lie ak function bnaan ha
  void register() async{
    DatabaseReference database = FirebaseDatabase.instance.ref();
    UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text
    );
    if(user.user !=null){
      print(user.user!.uid);
      await database.child('Products/user3').child(user.user !.uid).set({
        "username": username.text,
        "name": name.text,
        "email": email.text,
        "gender": gender.text,
        "password": gender.text

      });

      await database.child('Credit_Card').child(FirebaseAuth.instance.currentUser!.uid).set(
          {});


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
                  height: height*0.25,
                  child: Image.asset('Assists/Images/phys.jpg',fit: BoxFit.fill,),
                ),
                Container(
                  ///con ko round decoration sa karta han
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0,),
                    color: Colors.grey.shade200,
                  ),
                  margin: EdgeInsets.only(top: height*0.17,left: width*0.029,right: width*0.029),
                  width: width,
                  height: height*0.7,
                  child:Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: width*0.05,top: height*0.03,),
                        child: Text('Book Now',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width*0.07,top: height*0.03),
                        child: TextField(
                          controller: username,
                          keyboardType: TextInputType.name,
                          autofocus: false,

                          decoration: InputDecoration(
                            hintText: 'Enter Username',
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
                      ///2nd row
                      Container(
                        margin: EdgeInsets.only(left: width*0.07,top: height*0.02),
                        child: TextField(
                          controller: name,
                          keyboardType: TextInputType.name,
                          autofocus: false,

                          decoration: InputDecoration(
                            hintText: 'Enter Name',
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
                      ///3rd row
                      Container(
                        margin: EdgeInsets.only(left: width*0.07,top:height*0.02),
                        child: TextField(
                          controller: email,
                          keyboardType: TextInputType.name,
                          autofocus: false,

                          decoration: InputDecoration(
                            hintText: 'Enter Email',
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
                      Container(
                        margin: EdgeInsets.only(left: width*0.07,top: height*0.02),
                        child: TextField(
                          controller: gender,
                          keyboardType: TextInputType.name,
                          autofocus: false,

                          decoration: InputDecoration(
                            hintText: 'Enter Gender',
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
                      ///5th row
                      Container(
                        margin: EdgeInsets.only(left: width*0.07,top: height*0.02),
                        child: TextField(
                          controller: password,
                          keyboardType: TextInputType.name,
                          autofocus: false,

                          decoration: InputDecoration(
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>screensix()),);

                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  shadowColor: Colors.green,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,))
                                  
                                ),
                                  child: Text('Register Now',
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
                                ),
                              ),
                            ),
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(left: width*0.01,),
                                child: Text('Sign In',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.pushNamed(context, '/projectloginform');
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

