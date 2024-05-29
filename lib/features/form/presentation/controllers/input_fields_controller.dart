import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/features/form/presentation/views/gender_field.dart';

class InputFieldsController {

  //Input Controllers
  static final TextEditingController nameController = TextEditingController();
  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController passwordController = TextEditingController();

  //Input Form Keys
  static final GlobalKey<FormState> nameFormKey = GlobalKey<FormState>();
  static final GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();
  static final GlobalKey<FormState> passwordFormKey = GlobalKey<FormState>();

  //Extra Input Values
  static Gender gender = Gender.M;
  static String birthDate = '--';


  // Get validation error message
  static String? validator(String? value){
    if (value == null || value.isEmpty) {
      return "Field can't be empty";
    }
    return null;
  }

  // Check if all validators are OK
  static bool validateForSubmit(){
    return nameFormKey.currentState!.validate()
        && emailFormKey.currentState!.validate()
        && passwordFormKey.currentState!.validate();
  }
}