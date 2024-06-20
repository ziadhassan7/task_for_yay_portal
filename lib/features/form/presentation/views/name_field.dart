import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/core/localization/localization.dart';
import 'package:task_for_yay_portal/features/form/presentation/widget/registration_field.dart';
import '../controllers/input_fields_controller.dart';

class NameField extends StatelessWidget {
  const NameField({super.key});

  @override
  Widget build(BuildContext context) {

    Localoo localTxt = Localoo(context);

    return RegistrationField(
        title: localTxt.name,
        controller: InputFieldsController.nameController,
        formKey: InputFieldsController.nameFormKey,
        validator: InputFieldsController.validator,);
  }
}
