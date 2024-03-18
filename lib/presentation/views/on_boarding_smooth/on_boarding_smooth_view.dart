import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:movies_app_m/business_logic/on_boarding_logic/on_boarding_logic.dart';
import 'package:movies_app_m/core/change_page/change_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingSmoothView extends StatelessWidget {
  final PageController controller;
  const OnBoardingSmoothView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OnBoardingLogic cubit=OnBoardingLogic.get(context);
    return  BlocBuilder<OnBoardingLogic, OnBoardingState>(
  builder: (context, state) {
    return SizedBox(
      width:100.w ,
      height: 7.h,
      child: Row(
        children: [
          Expanded(
              child: Container(
                margin: EdgeInsets.all(10.sp),
                child: TextButton(onPressed: (){
                  Navigator.pushNamed(context, loginScreen,arguments:[true]);
                },
                  child: Text("Skip",
                    style: TextStyle(color: Colors.white,fontSize: 12.sp),),),
              )),
          Expanded(
              flex: 2,
              child:Container(
                margin: EdgeInsets.all(10.sp),
                child: Center(
                  child: SmoothPageIndicator(
                      controller: controller,  // PageController
                      count:  3,

                      effect:  const ExpandingDotsEffect(
                          dotColor: Colors.white,
                          activeDotColor: Colors.white
                      ),  // your preferred effect
                      onDotClicked: (index){

                      }
                  ),
                ),
              )  ),
          Expanded(child: Container(
              margin: EdgeInsets.all(12.sp),
              child: Visibility(
                visible:cubit.isLast ,
                replacement:const SizedBox() ,
                child: ElevatedButton(
                  onPressed: (){
                Navigator.pushNamed(context, loginScreen,arguments:[true]);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.sp),topRight:Radius.circular(20.sp) )
                      )
                  ),
                  child: Text("Next",style: TextStyle(color:Colors.black,fontSize: 10.sp,fontWeight: FontWeight.w600),),
                ),
              )
          ))
        ],
      ),
    );
  },
);
  }
}
