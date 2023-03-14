///import 'dart:js';

///import 'dart:js';

///import 'dart:js';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:get/get.dart';
import 'package:project/AudioVideoCall.dart';
import 'package:project/BeautyProducts.dart';
import 'package:project/BestFurniture.dart';
import 'package:project/Deliciousfood.dart';
import 'package:project/Foodapp1.dart';
import 'package:project/GeoLocator.dart';
import 'package:project/Getx.dart';
import 'package:project/ProjectScreenOne.dart';
import 'package:project/RealTimefirebase.dart';
import 'package:project/Salon3.dart';
import 'package:project/TwoAugust.dart';
import 'package:project/appbar.dart';
import 'package:project/awe.dart';
import 'package:project/awesomeNotification.dart';
import 'package:project/backgroundimage.dart';
import 'package:project/beautyproductsthree.dart';
import 'package:project/beautyproductstwo.dart';
import 'package:project/creditcard.dart';
import 'package:project/drawer.dart';
import 'package:project/exmaple.dart';
import 'package:project/firebaseSignup.dart';
import 'package:project/firebaseUiSignup.dart';
import 'package:project/firebaseUidlogin.dart';
import 'package:project/firebaselogin.dart';

import 'package:project/foodScreen.dart';
import 'package:project/foodtwo.dart';
import 'package:project/getxpropermethod.dart';
import 'package:project/homeScreen.dart';
import 'package:project/inter.dart';
import 'package:project/interfurni.dart';
import 'package:project/login.dart';
import 'package:project/loginsucessful.dart';
import 'package:project/medicalHomeScreen.dart';
import 'package:project/newapp.dart';
import 'package:project/newappthree.dart';
import 'package:project/newapptwo.dart';
import 'package:project/practise.dart';
import 'package:project/practise_Final.dart';
import 'package:project/projectcouponscreen.dart';
import 'package:project/projectfeedback.dart';
import 'package:project/projectsignupform.dart';
import 'package:project/projectscreenfour.dart';
import 'package:project/projectloginform.dart';
import 'package:project/projectscreensix.dart';
import 'package:project/projectfirstscreen.dart';
import 'package:project/projectscreentwo.dart';
import 'package:project/pushNotification.dart';
import 'package:project/ramzan.dart';
import 'package:project/registersuccessful.dart';
import 'package:project/salon1.dart';
import 'package:project/salon2.dart';
import 'package:project/sidebar.dart';
import 'package:project/signup.dart';
import 'package:project/singlechild.dart';
import 'package:project/socialmedialogin.dart';
import 'package:project/socialmediaone.dart';
import 'package:project/socialmediaregister.dart';
import 'package:project/umersignup.dart';
import 'OnboardingScreen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'lisatView.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  ///notification code
  AwesomeNotifications().initialize(
    // set the icon to null if you want to use the default app icon
      null,
      [
        NotificationChannel(
            channelGroupKey: 'basic_channel_group',
            channelKey: 'basic_channel',
            channelName: 'Basic notifications',
            channelDescription: 'Notification channel for basic tests',
            defaultColor: Color(0xFF9D50DD),
            ledColor: Colors.white,
        )
      ],
      // Channel groups are only visual and are not required
      channelGroups: [
        NotificationChannelGroup(
            channelGroupkey: 'basic_channel_group',
            channelGroupName: 'Basic group'),
      ],
      debug: true
  );
  runApp(GetMaterialApp(
   /// routes hamesha materialapp ma bnta han or mian screen ma bna gan
    ///home: Splashscreen(),
    ///initial routes first route hota ha
    initialRoute: '/',
    routes:{
      '/':(context)=>Splashscreen(),
      '/Socialmedia': (context)=> socialmedialogin(),
      '/socialmediaregister': (context)=> socialmediaregister(),
      '/Products':(context)=> drawer1(),
      '/projectloginform':(context)=> projectloginform(),
      '/projectsignup': (context)=> screenfive(),
      '/projecthomescreen':(context)=> projectscreen(),
      ///'/Products/detail': (context)=> newapptwo(),
      ///'/Products/detail/cart': (context)=> loginsucessful(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  EasySplashScreen(
      logo: Image.asset('Assists/Images/loginbg.png'),
      title: Text(
        "Salon App",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator: firebaselogin(),
      durationInSeconds: 2,
    );
  }
}
///2.10.4


