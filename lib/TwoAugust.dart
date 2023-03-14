import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '';



void main() {
  runApp(const CodeScreenOtp());
}

class  CodeScreenOtp extends StatelessWidget {
  const CodeScreenOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OTPCode',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);
  void login() async {



  }


  @override

  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  // 4 text editing controllers that associate with the 4 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();
  TextEditingController email=TextEditingController();

  // This is the entered code
  // It will be displayed in a Text widget
  String? _otp;
  late double width;
  late double height;

  void phoneAuth() async{
    FirebaseAuth auth = FirebaseAuth.instance;
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+923099688315',
      verificationCompleted: (PhoneAuthCredential credential) async{
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) async{
        String smsCode = '123456';
        PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);
        await auth.signInWithCredential(credential);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  initState(){
    super.initState();

    phoneAuth();
  }
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('send otp'),
      ),

      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: width*0.08,top: height*0.03),
            child: TextField(
              controller: email,
              keyboardType: TextInputType.number,
              autofocus: false,
              style: TextStyle(
                fontFamily: 'poppins',
              ),
              decoration: InputDecoration(
                hintText: 'Enter Number',
                hintStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500
                ),
                border: InputBorder.none
                ,
              ),
            ),
          ),
          Container(
            child:ElevatedButton(

              onPressed: () {
                phoneAuth();
              },
              child: const Text('Send OPT'),
            ),),
          const Text('Phone Number Verification'),
          const SizedBox(
            height: 30,
          ),
          // Implement 4 input fields
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OtpInput(_fieldOne, true),
              OtpInput(_fieldTwo, false),
              OtpInput(_fieldThree, false),
              OtpInput(_fieldFour, false),
              OtpInput(_fieldFive, false),
              OtpInput(_fieldSix, false),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                phoneAuth();


                setState(() {
                  _otp = _fieldOne.text +
                      _fieldTwo.text +
                      _fieldThree.text +
                      _fieldFour.text;
                  _fieldFive.text;
                  _fieldSix.text;
                });
              },
              child: const Text('Submit')),
          const SizedBox(
            height: 30,
          ),
          // Display the entered OTP code
          Text(
            _otp ?? 'Please enter OTP',
            style: const TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}

// Create an input widget that takes only one digit
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}