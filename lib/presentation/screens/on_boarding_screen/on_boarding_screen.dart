import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:movies_app_m/business_logic/on_boarding_logic/on_boarding_logic.dart';

import '../../views/on_boarding_smooth/on_boarding_smooth_view.dart';
import '../../views/on_boarding_view/on_boarding_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingLogic, OnBoardingState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: SizedBox(
            child: Column(
              children: [
                SizedBox(
                  width: 100.w,
                  height: 93.h,
                  child: OnBoardingView(controller: controller,),
                ),
                OnBoardingSmoothView(controller: controller,)

              ],
            ),
          ),
        );
      },
    );
  }
}
