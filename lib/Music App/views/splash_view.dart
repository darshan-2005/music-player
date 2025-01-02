import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common_widgets/colors.dart';



class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
  
}

class _SplashViewState extends State<SplashView> {
 @override

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      // Get.to(MainTabview()); // Replaces the splash screen with the home screen
    });
  }
  @override
  Widget build(BuildContext context) {

    var widht = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Center(
        child: Image.asset('assets/images/music_app/app_logo.png',width: widht*0.30,),
      ),

    );
  }
}
