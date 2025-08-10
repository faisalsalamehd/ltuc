import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltuc/helpers/connections_network.dart';
import 'package:ltuc/util/constant/general.dart';
import 'package:ltuc/util/routes/router_string.dart';

class SplashController extends GetxController {
  String name = 'Mahmmoed';
  @override
  void onInit() {
    startSplash();
    super.onInit();
  }

  Future<void> startSplash() async {
    screenWidth = MediaQuery.sizeOf(Get.context!).width;
    screenHeight = MediaQuery.sizeOf(Get.context!).height;

    bool isConnected = await ConnectionsNetwork.isConnected();
    await Future.delayed(Duration(seconds: 3)); // we wait 3 sec then navigat to welcome screen ( remove it in future )
    Get.toNamed(RouterString.welcome);
    // Get.to(()=> WelcomeScreen(),binding: WelcomeBinding());
    if (!isConnected) {
      Get.snackbar('error', 'pls check connections');
      return;
    }
    // LocationPermission permission = await Geolocator.checkPermission();
    // if(permission != LocationPermission.always){
    //   // ask again for permission
    // }
    // Position getCurrentPosition = await Geolocator.getCurrentPosition();
    // log(getCurrentPosition.latitude.toString());
  }
}
