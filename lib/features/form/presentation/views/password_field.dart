import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/features/form/presentation/widget/registration_field.dart';
import '../controllers/input_fields_controller.dart';

class PasswordField extends StatelessWidget {
  const PasswordField(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {

    return RegistrationField(
      title: title,
      controller: InputFieldsController.passwordController,
      isPassword: true,
      formKey: InputFieldsController.passwordFormKey,
      validator: InputFieldsController.validator,);
  }
}
