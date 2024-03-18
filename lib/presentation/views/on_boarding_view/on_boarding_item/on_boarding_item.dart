import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:movies_app_m/presentation/model/model_on_boarding.dart';

class OnBoardingItem extends StatelessWidget {
   final OnBoarding onBoarding;
  const OnBoardingItem({Key? key, required this.onBoarding, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 100.w,
                height: 77.h,
                child: Image.asset(onBoarding.image,width: 100.w,height: 80.h,fit: BoxFit.fill,)),

           Container(
             margin: EdgeInsets.all(12.sp),
             width: 100.w,
             height: 13.h,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               Text(onBoarding.title,style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w600),),
               Text(onBoarding.body,style: TextStyle(color: Colors.white54,fontSize: 15.sp,fontWeight: FontWeight.w600),)
             ],),
           )
          ],
        ),
      ),
    );
  }
}
