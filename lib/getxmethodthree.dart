import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GetXController extends GetxController{

  var counter =0.obs;

  increment (){
    counter++;
  }

}