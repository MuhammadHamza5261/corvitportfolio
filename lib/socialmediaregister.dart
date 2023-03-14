import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/newapp.dart';
import 'package:project/socialmedialogin.dart';
import 'package:project/socialmediaone.dart';


class socialmediaregister extends StatelessWidget {
  const socialmediaregister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: signUpsTF(),
      ),
    );
  }
}

///stf
class signUpsTF extends StatefulWidget {
  const signUpsTF({Key? key}) : super(key: key);

  @override
  State<signUpsTF> createState() => _signUpsTFState();
}

class _signUpsTFState extends State<signUpsTF> {
  late double width;
  late double height;

  ///controller ka name hamesha name php ma jo data get kia ho ga wohi aen gan

  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phoneno = TextEditingController();

  void register() async {
    DatabaseReference database = FirebaseDatabase.instance.ref();
    UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
    );

    if (user.user != null){
      print(user.user!.uid);

      await database.child('Products/user3').child(user.user !.uid).set({

        "username": username.text,
        "email": email.text,
        "phoneno": phoneno.text,
        "password": password.text
      });
    }
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => newapp()),);

    }

      ///main screen pa jana k lie








  @override
  initState(){
    super.initState();

  }
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            ///first Section
            Container(
              margin: EdgeInsets.only(top: height*0.02),
              child: Row(
                children: [
                  ///Icon and text
                  Container(
                    margin: EdgeInsets.only(left: width*0.065),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///icon
                        Container(

                          child: Icon(Icons.arrow_back_ios,
                            color: Colors.grey,
                          ),
                        ),
                        ///Text
                        InkWell(
                          child: Container(
                            child: Text('LOGIN',
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>socialmedialogin()),);
                          },
                        ),
                      ],
                    ),
                  ),
                  ///Image
                  Container(
                    margin: EdgeInsets.only(left:65.0,),
                    height: height*0.15,
                    width: width*0.5,
                    child: Image.asset('Assists/Images/insta.png'),
                  ),

                ],
              ),
            ),
            ///gif
            Container(
              margin: EdgeInsets.only(top: height*0.3),
              height: height*0.4,
              child: Image.asset('Assists/Images/gif.gif'),
            ),
            ///SignUp
            Container(
              margin: EdgeInsets.only(top: height*0.3, left: width*0.06),
              child: Text('Sign Up',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins',
                    fontSize: 38),
              ),
            ),

            ///username feild
            Container(
              margin: EdgeInsets.only(top: height*0.432, left: width*0.06),
              child: TextField(
                controller: username,
                autofocus: false,
                keyboardType: TextInputType.name,
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,

                    fontSize: 18
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter UserName",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        letterSpacing: 1.0
                    )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.488),
              height: height*0.002,
              width: width*0.7,
              color: Colors.grey.shade400,
            ),
            ///email feild
            Container(
              margin: EdgeInsets.only(top: height*0.494, left: width*0.06),
              child: TextField(
                controller: email,
                autofocus: false,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,

                    fontSize: 18
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Email",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        letterSpacing: 1.0
                    )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.552),
              height: height*0.002,
              width: width*0.6,
              color: Colors.grey.shade400,
            ),
            ///password feild
            Container(
              margin: EdgeInsets.only(top: height*0.56, left: width*0.06),
              child: TextField(
                controller: password,
                autofocus: false,
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,

                    fontSize: 18
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Password",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        letterSpacing: 1.0
                    )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.616),
              height: height*0.002,
              width: width*0.5,
              color: Colors.grey.shade400,
            ),
            ///phone feild
            Container(
              margin: EdgeInsets.only(top: height*0.62, left: width*0.06),
              child: TextField(
                controller: phoneno,
                autofocus: false,
                keyboardType: TextInputType.phone,
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,

                    fontSize: 18
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Phone",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        letterSpacing: 1.0
                    )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.677),
              height: height*0.002,
              width: width*0.9,
              color: Colors.grey.shade400,
            ),
            ///herbal img
            Container(
              margin: EdgeInsets.only(top: height*0.65, left: width*0.65),
              height: height*0.3,
              child: Image.asset('Assists/Images/Herb.png'),
            ),
            ///lets cook
            Container(
              margin: EdgeInsets.only(top: height*0.58,left: width*0.6),
              height: height*0.08,
              width: width*0.47,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  shadowColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(width*0.04))
                  ),
                ),
                onPressed: (){
                  register();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>newapp()),);
                },
                child: Text('Register',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),

            ///facebook icon
            Container(
              margin: EdgeInsets.only(top: height*0.695, left: width*0.85),
              height: height*0.065,
              width: width*0.17,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(width*0.03))
                    )
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/Products');
                },
                child: Icon(Icons.facebook,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}