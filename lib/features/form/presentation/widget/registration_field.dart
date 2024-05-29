import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/features/form/presentation/widget/text_label.dart';
import '../../../../core/styles/default_padding.dart';


class RegistrationField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final GlobalKey<FormState>? formKey;
  final String? Function(String?)? validator;
  final bool isPassword;

  const RegistrationField(
      {required this.title,
      required this.controller,
      this.isPassword = false,
      this.formKey,
      this.validator,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: Column(
        children: [
          label(),

          formField(),
        ],
      ),
    );
  }

  Widget label(){
    return TextLabel(label: title);
  }

  Widget formField(){
    return Form(
      key: formKey,

      child: TextFormField(
        controller: controller,
        validator: validator,

        obscureText: isPassword? true:false,
      ),
    );
  }
}
