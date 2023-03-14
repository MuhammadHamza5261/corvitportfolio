import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginSTF(),
      resizeToAvoidBottomInset: false,
    );
  }
}
class loginSTF extends StatefulWidget {
  const loginSTF({Key? key}) : super(key: key);

  @override
  State<loginSTF> createState() => _loginSTFState();
}

class _loginSTFState extends State<loginSTF> {
  late double width;
  late double height;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  void login() async{

    String url="https://techfirm.tech/hamza/appimg/appphp/applogin.php";

     Map<String,dynamic> loginData = Map<String,dynamic>();

    loginData['email']= email.text;
    loginData['password']= password.text;

    var result=  await http.post(Uri.parse(url),body: loginData);

    ///print islie likhta han kunke is sa console ma data ata ha
    print(result.body);

  }
  @override
  ///init state screen pa widget run hona sa pehla show karwa data ha
  initState(){
    super.initState();
    login();

  }
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30.0,),
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 90.0,),
                    child: Text('SIGN UP',
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0,),
                    width: width*0.4,


                    child: Image.asset('Assists/Images/1.png'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0,left: 30.0,),
              child: Text('Log In',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 45.0,),
            Container(
              margin: EdgeInsets.only(left: 30.0,),
              child: TextField(
                controller:email,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  border: InputBorder.none,
                  ),
                ),
            ),
            Container(
              height: height*0.002,
              width: width*0.83,
              color:Colors.black26,
            ),
            ///password
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none
                  ),
                ),
            ),
            Container(
              height: height*0.002,
              width: width*0.6,
              color:Colors.black26,
            ),
            ///forgot password text
            Container(
              margin: EdgeInsets.only(top: 30.0,left: 30.0,),
              child: Text('Forgot Password?',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 20.0,
              ),
              ),
            ),
            ///lets cook btn
            Container(
              width: width*0.6,
              height: height*0.075,
              margin: EdgeInsets.only(left: 220.0,top: 20.0,),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shadowColor: Colors.green,
                  elevation: 10.0,

                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(

                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  )),
                ),
                  onPressed:(){
                    login();

                  },


                  child: Text('Lets Cook!',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
            ),
            ),
            ///fb btn
            Container(
              width: width*0.22,
              height: height*0.065,
              margin: EdgeInsets.only(left: 290.0,top: 20.0,),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  elevation: 10.0,
                  shadowColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  )),
                ),
                onPressed:(){},
                child: Icon(Icons.facebook),
              ),
            ),





          ],
        ),
      ),
    );
  }
}

