import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app_m/business_logic/on_boarding_logic/on_boarding_logic.dart';

import '../../model/model_on_boarding.dart';
import 'on_boarding_item/on_boarding_item.dart';

class OnBoardingView extends StatelessWidget {
  final PageController controller;
  const OnBoardingView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<OnBoarding> data=[
      OnBoarding(image: "images/3.png", title: "OFFLINE", body: "watch your favourite film any where without  an internet connect"),
      OnBoarding(image: "images/2.png", title: "FIND MOVIES", body: "watch your favourite film any where without  an internet connect"),
      OnBoarding(image: "images/1.png", title: "INVIT FRIENDS", body: "watch your favourite film any where without  an internet connect"),
    ];
    OnBoardingLogic cubit=OnBoardingLogic.get(context);
    //loop
    return BlocBuilder<OnBoardingLogic, OnBoardingState>(
  builder: (context, state) {
    return PageView.builder(
      controller: controller,
      itemCount: data.length,
        onPageChanged: (index)=>cubit.changePageView(index, data),
        itemBuilder: (context,index)=>OnBoardingItem(onBoarding: data[index],),
    );
  },
);
  }
}
