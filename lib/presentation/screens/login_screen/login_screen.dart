import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:movies_app_m/business_logic/login_logic/login_logic.dart';

import '../../views/login_view/login_view.dart';
import '../../views/register_view/register_view.dart';
class LoginScreen extends StatefulWidget {
  final bool login;
  const LoginScreen({Key? key, required this.login}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 final GlobalKey<ScaffoldState> _key=GlobalKey<ScaffoldState>();
 final TextEditingController _numberPhone=TextEditingController();
 final TextEditingController _password=TextEditingController();
 final GlobalKey<FormState> _keyForm=GlobalKey<FormState>();
 final TextEditingController numberPhoneRegister=TextEditingController();
 final TextEditingController passwordRegister=TextEditingController();
 final TextEditingController confirmPasswordRegister=TextEditingController();
 final TextEditingController email=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginLogic, LoginState>(
  builder: (context, state) {
    return Scaffold(
      key:_key ,
     backgroundColor: Colors.white,
     body: SizedBox(
       child:SingleChildScrollView(
         child: Stack(
           children: [
             SizedBox(
               width: 100.w,
               height: 100.h,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(
                     width: 100.w,
                     height: 85.h,
                     decoration: const BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(
                       bottomLeft: Radius.elliptical(150, 50),
                       bottomRight: Radius.elliptical(150, 50),
                     )),
                   ),
                   SizedBox(
                     width: 100.w,
                     height: 15.h,
                   )
                 ],
               ),

             ),
             Visibility(
               visible:widget.login ,
                 replacement:  RegisterView(confirmPasswordRegister: confirmPasswordRegister,email: email,passwordRegister: passwordRegister,numberPhoneRegister: numberPhoneRegister, keyForm: _keyForm,),
                 child: LoginView(numberPhone:_numberPhone,password:_password,keyForm:_keyForm ,))

           ],
         ),
       ),
     ),
    );
  },
);
  }
  @override
  void dispose() {
    _password.dispose();
    _numberPhone.dispose();
    passwordRegister.dispose();
    email.dispose();
    confirmPasswordRegister.dispose();
    numberPhoneRegister.dispose();
    super.dispose();
  }
}

