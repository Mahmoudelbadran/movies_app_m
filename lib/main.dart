import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:movies_app_m/business_logic/login_logic/login_logic.dart';
import 'package:movies_app_m/presentation/router/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'business_logic/on_boarding_logic/on_boarding_logic.dart';
void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MultiBlocProvider(
  providers:[
    BlocProvider(
       create:   (context) => OnBoardingLogic(),
    ),
    BlocProvider(
      create:   (context) => LoginLogic(),
    ),

  ],
      child: FlutterSizer(
          builder: (context, orientation, screenType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Movies App",
              onGenerateRoute: appRouter.onGenerateRoute,

            );
          }
      ),
    );
  }
}
