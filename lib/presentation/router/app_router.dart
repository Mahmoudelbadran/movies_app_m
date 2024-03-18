import 'package:flutter/material.dart';
import 'package:movies_app_m/presentation/screens/login_screen/login_screen.dart';
import 'package:movies_app_m/presentation/screens/sign_up_screen/sign_up_screen.dart';

import '../../core/change_page/change_page.dart';
import '../screens/on_boarding_screen/on_boarding_screen.dart';
import '../screens/splash_screen/splash_screen.dart';

class AppRouter{
  late Widget startPage;
  Route?onGenerateRoute(RouteSettings settings){
    startPage=const SplashScreen();
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=>startPage);
      case onBoardingScreen:
        return MaterialPageRoute(builder: (_)=>const OnBoardingScreen());
      case loginScreen:
        List<bool> login=settings.arguments as List<bool>;
        return MaterialPageRoute(builder: (_)=> LoginScreen(login:login[0] ,));
      case signUpScreen:
        return MaterialPageRoute(builder: (_)=>const SignUpScreen());

      default:
        return null;
    }

  }
}