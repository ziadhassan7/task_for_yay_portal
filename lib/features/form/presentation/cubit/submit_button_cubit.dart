import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:task_for_yay_portal/features/form/data/datasource/user_data.dart';
import 'package:task_for_yay_portal/features/form/presentation/controllers/input_fields_controller.dart';
import '../../../../core/custom_log.dart';
import '../controllers/location_controller.dart';
import 'submit_button_states.dart';


class SubmitButtonCubit extends Cubit<SubmitButtonStates>{
  SubmitButtonCubit() : super(IdleState());

  ///Refresh current List
  submit() async {
    if(InputFieldsController.validateForSubmit()){

      //Loading
      emit(LoadingState());

      try {
        //Save Data
        await _pushIntoLocalStorage();
        emit(SuccessState());
      } catch (e) {
        //Error
        emit(ErrorState());
        Log("GPS Error", e);
      }

    }
  }



  _pushIntoLocalStorage() async {
    _clearOldData();

    // Push into Hive
    UserData.updateUserName(InputFieldsController.nameController.text);
    UserData.updateEmail(InputFieldsController.emailController.text);
    UserData.updatePassword(InputFieldsController.passwordController.text);

    UserData.updateGender(InputFieldsController.gender.name);
    UserData.updateBirthDate(InputFieldsController.birthDate);

    await _pushLocationIntoHive();
  }

  _pushLocationIntoHive() async {
    Position position = await LocationController.getCurrentLocation();
    UserData.updateLocation("${position.latitude},${position.longitude}");
  }

  _clearOldData(){
    UserData.clearBirthDate();
    UserData.clearLocation();
  }

}
