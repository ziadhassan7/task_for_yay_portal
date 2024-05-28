import 'package:flutter/material.dart';


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
    return Column(
      children: [
        label(),

        formField(),
      ],
    );
  }

  Widget label(){
    return Text(title);
  }

  Widget formField(){
    return TextFormField(

    );
  }
}
