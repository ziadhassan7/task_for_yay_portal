import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/features/form/presentation/views/gender_field.dart';

class InputFieldsController {

  static final TextEditingController nameController = TextEditingController();
  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController passwordController = TextEditingController();

  static Gender gender = Gender.M;
  static String birthDate = '--';
}