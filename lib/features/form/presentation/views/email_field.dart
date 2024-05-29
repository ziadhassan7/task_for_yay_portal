import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/features/form/presentation/widget/registration_field.dart';

import '../../../../core/localization/localization.dart';
import '../controllers/input_fields_controller.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});


  @override
  Widget build(BuildContext context) {
    return RegistrationField(
        title: LocalTxt().email,
        controller: InputFieldsController.emailController,
        formKey: InputFieldsController.emailFormKey,
        validator: InputFieldsController.validator,);
  }
}
