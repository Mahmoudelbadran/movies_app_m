
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';
class LoginLogic extends Cubit<LoginState> {
  LoginLogic() : super(AppIntialStates());

  static LoginLogic get(context) =>
      BlocProvider.of<LoginLogic>(context);
bool visible=true;
IconData iconPassword=Icons.visibility;
void onClickIconPassword(){
  if(visible==true){
    iconPassword=Icons.visibility;
  }else{
    iconPassword=Icons.visibility_off;
  }
  visible=!visible;
  emit(OnClickIconPasswordState());
}
}