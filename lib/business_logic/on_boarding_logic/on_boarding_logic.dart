import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/model/model_on_boarding.dart';
part 'on_boarding_state.dart';
class OnBoardingLogic extends Cubit<OnBoardingState> {
  OnBoardingLogic() : super(AppIntialStates());

  static OnBoardingLogic get(context) => BlocProvider.of<OnBoardingLogic>(context);
 bool isLast=false;
  void changePageView(int index, List<OnBoarding> data){
    if(index==data.length-1){
      isLast=true;
    }else{
      isLast=false;
    }
    emit(ChangePageView());
  }

}