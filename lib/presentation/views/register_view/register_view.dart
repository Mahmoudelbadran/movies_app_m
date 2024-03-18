import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:movies_app_m/business_logic/login_logic/login_logic.dart';
import 'package:movies_app_m/core/change_page/change_page.dart';

class RegisterView extends StatelessWidget {
  final TextEditingController numberPhoneRegister;
  final TextEditingController passwordRegister;
  final TextEditingController confirmPasswordRegister;
  final TextEditingController email;
  final GlobalKey<FormState> keyForm;
  const RegisterView({Key? key, required this.numberPhoneRegister, required this.passwordRegister, required this.confirmPasswordRegister, required this.email, required this.keyForm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginLogic cubit=LoginLogic.get(context);
    return BlocBuilder<LoginLogic, LoginState>(
  builder: (context, state) {
    return SizedBox(
      width: 100.w,
      height: 100.h,
      child: Form(
        key:keyForm ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.all(8.sp),
              child: CircleAvatar(backgroundColor: Colors.black,backgroundImage: const AssetImage("images/icon-b.png"),radius: 45.sp,),
            ),
            Text("Register User",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30.sp),),
            SizedBox(
                width: 50.w,
                child: const Divider(color: Colors.white,thickness: 4,)),
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: TextFormField(
                controller: numberPhoneRegister,
                keyboardType: TextInputType.number,
                validator: (text){
                  if(text!.isEmpty){
                    return 'Number Phone is Empty!';
                  }
                },
                decoration:  InputDecoration(
                  prefixIcon: const Icon(Icons.phone,color: Colors.white,),
                  hintText: "NumberPhone",
                  fillColor: Colors.white,
                  hintStyle: const TextStyle(color: Colors.white),
                  enabled: true,
                  focusedBorder:  OutlineInputBorder(
                      borderSide:const BorderSide(width: 2,style: BorderStyle.solid,color: Colors.white),
                      borderRadius: BorderRadius.circular(25.sp)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:const BorderSide(width: 2,style: BorderStyle.solid,color: Colors.white),
                      borderRadius: BorderRadius.circular(25.sp)
                  ),
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: TextFormField(
                controller: email,
                keyboardType: TextInputType.text,
                validator: (text){
                  if(text!.isEmpty){
                    return 'Number Phone is Empty!';
                  }
                },
                decoration:  InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined,color: Colors.white,),
                  hintText: "Email",
                  fillColor: Colors.white,
                  hintStyle: const TextStyle(color: Colors.white),
                  enabled: true,
                  focusedBorder:  OutlineInputBorder(
                      borderSide:const BorderSide(width: 2,style: BorderStyle.solid,color: Colors.white),
                      borderRadius: BorderRadius.circular(25.sp)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:const BorderSide(width: 2,style: BorderStyle.solid,color: Colors.white),
                      borderRadius: BorderRadius.circular(25.sp)
                  ),
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: TextFormField(
                controller: passwordRegister,
                keyboardType: TextInputType.number,
                obscureText: cubit.visible,
                maxLength:10 ,
                validator: (text){
                  if(text!.isEmpty){
                    return 'Password is Empty';
                  }
                },
                decoration:  InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: ()=>cubit.onClickIconPassword(),
                    icon:  Icon(cubit.iconPassword,color: Colors.white,),
                  ),
                  prefixIcon: const Icon(Icons.lock,color: Colors.white,),
                  hintText: "Password",
                  fillColor: Colors.white,
                  hintStyle: const TextStyle(color: Colors.white),
                  enabled: true,
                  focusedBorder:  OutlineInputBorder(
                      borderSide:const BorderSide(width: 2,style: BorderStyle.solid,color: Colors.white),
                      borderRadius: BorderRadius.circular(25.sp)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:const BorderSide(width: 2,style: BorderStyle.solid,color: Colors.white),
                      borderRadius: BorderRadius.circular(25.sp)
                  ),
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: TextFormField(
                controller: confirmPasswordRegister,
                keyboardType: TextInputType.number,
                obscureText: cubit.visible,
                maxLength:10 ,
                validator: (text){
                  if(text!.isEmpty){
                    return 'conFirm Password is Empty';
                  }
                },
                decoration:  InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: ()=>cubit.onClickIconPassword(),
                    icon:  Icon(cubit.iconPassword,color: Colors.white,),
                  ),
                  prefixIcon: const Icon(Icons.lock,color: Colors.white,),
                  hintText: "Confirm Password",
                  fillColor: Colors.white,
                  hintStyle: const TextStyle(color: Colors.white),
                  enabled: true,
                  focusedBorder:  OutlineInputBorder(
                      borderSide:const BorderSide(width: 2,style: BorderStyle.solid,color: Colors.white),
                      borderRadius: BorderRadius.circular(25.sp)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:const BorderSide(width: 2,style: BorderStyle.solid,color: Colors.white),
                      borderRadius: BorderRadius.circular(25.sp)
                  ),
                ),

              ),
            ),
            SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
Navigator.pushNamed(context, loginScreen,arguments: [true]);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white54,
                        maximumSize: Size(35.w, 7.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.sp)
                        )
                    ),
                    child: Text("Login",style: TextStyle(color:Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(10.sp),
                    child: ElevatedButton(
                      onPressed: (){
                        if(keyForm.currentState!.validate()){
                        if(passwordRegister.text.trim()==confirmPasswordRegister.text.trim()){

                        }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          maximumSize: Size(35.w, 7.h),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.sp)
                          )
                      ),
                      child: Text("Register",style: TextStyle(color:Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w600),),
                    ),
                  ),
                ],
              ),
            ),
            Text("Or",style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w500),),
            SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.all(10.sp),
                    child: InkWell(
                        onTap: (){

                        },
                        child:Image.asset("images/facebook.png",height: 5.h,)

                    ),
                  ),
                  InkWell(
                      onTap: (){

                      },
                      child:Image.asset("images/gamil.png",height: 5.h,)

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  },
);
  }
}
