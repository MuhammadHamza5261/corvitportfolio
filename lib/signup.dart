import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: signupSTF(),
      resizeToAvoidBottomInset: false,
    );
  }
}
class signupSTF extends StatefulWidget {
  const signupSTF({Key? key}) : super(key: key);

  @override
  State<signupSTF> createState() => _signupSTFState();
}

class _signupSTFState extends State<signupSTF> {
  late double width;
  late double height;
  ///api yaha sa start hoti
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phoneno = TextEditingController();
  void register() async{
    String url="https://prototype.analogenterprises.com/corvit/register.php";
    Map<String,dynamic> regdata = Map<String,dynamic>();
    var result = await http.post(Uri.parse(url),body: regdata);
    print(result.body);

  }


  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 40.0,top: 35.0,),
                        child: Text('Sign Up',
                          style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0,left: 10.0,),
                        child: Text('Sign up with',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0,right: 10.0),
                    width: width*0.3,
                    child: Image.asset('Assists/Images/1.png'),
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0,),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 50.0,),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0,)),
                      child: Icon(Icons.facebook_sharp,size: 50.0,color: Colors.blue,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0,),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0,)),
                      child: Icon(Icons.facebook_sharp,size: 50.0,color: Colors.blue,),
                    ),
                  ),
                ],
              ),
            ),
            Container(
             /// margin: EdgeInsets.only(top: 5.0,),
               child: Column(
                 children: [
                   Container(
                     margin: EdgeInsets.only(top: height*0.37, left: width*0.06),
                     child: TextField(
                       autofocus: false,
                       keyboardType: TextInputType.name,
                       style: TextStyle(
                           fontFamily: 'poppins',
                           fontWeight: FontWeight.w400,

                           fontSize: 18
                       ),
                       decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: "Enter Name",
                           hintStyle: TextStyle(
                               color: Colors.grey.shade400,
                               letterSpacing: 1.0
                           )
                       ),
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.only(top: height*0.424),
                     height: height*0.002,
                     width: width*0.8,
                     color: Colors.grey.shade400,
                   ),
                   Container(
                     margin: EdgeInsets.only(left: 20.0,),
                     child:TextField (
                       controller:username,
                       decoration: InputDecoration(
                           border: InputBorder.none,
                           labelText: 'Username',
                           hintText: 'enter username'
                       ),
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.only(left: 20.0,),
                     child:TextField (
                       controller: name,

                       decoration: InputDecoration(
                           border: InputBorder.none,
                           labelText: 'name',
                           hintText: 'exmaple@example.com'
                       ),
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.only(left: 20.0,),
                     child:TextField (
                       controller: password,
                       decoration: InputDecoration(
                           border: InputBorder.none,
                           labelText: 'Email',
                           hintText: 'exmaple@example.com'
                       ),
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.only(top: height*0.37, left: width*0.06),
                     child: TextField(
                       autofocus: false,
                       keyboardType: TextInputType.name,
                       style: TextStyle(
                           fontFamily: 'poppins',
                           fontWeight: FontWeight.w400,

                           fontSize: 18
                       ),
                       decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: "Enter Name",
                           hintStyle: TextStyle(
                               color: Colors.grey.shade400,
                               letterSpacing: 1.0
                           )
                       ),
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.only(top: height*0.424),
                     height: height*0.002,
                     width: width*0.8,
                     color: Colors.grey.shade400,
                   ),
                 ],
               ),

            ),
            Container(
              margin: EdgeInsets.only(top: 20.0,),
              child: Text('Creating an account means you are okay with',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0,top: 10.0,),
              child: Text('Our terms of service and privacy policies',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0,),
              width: width*0.74,
              height: height*0.075,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))
                ),
                  onPressed: (){},
                  child: Text('Create an Account',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0,left: 80.0,),
              child: Row(
                children: [
                  Container(
                    child: Text('Already have an account?',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 3.0,),
                    child: Text('Sign In',
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.w300,
                      ),),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

