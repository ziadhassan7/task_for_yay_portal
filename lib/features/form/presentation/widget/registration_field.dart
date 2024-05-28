import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/features/form/presentation/widget/text_label.dart';


class RegistrationField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final bool isPassword;

  const RegistrationField(
      {required this.title,
      required this.controller,
      this.isPassword = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
    return TextFormField(

    );
  }
}
