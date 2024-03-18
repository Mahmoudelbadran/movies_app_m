import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../../core/change_page/change_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Future.delayed(const Duration(seconds: 2),(){
     Navigator.pushNamedAndRemoveUntil(context, onBoardingScreen, (route) => false);
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black ,
      body:SizedBox(
        child: Center(
          child:Image.asset("images/icon-b.png",height: 15.h,),
        ),
      ) ,
    );
  }
}
