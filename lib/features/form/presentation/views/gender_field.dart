import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/core/localization/localization.dart';
import 'package:task_for_yay_portal/features/form/presentation/controllers/input_fields_controller.dart';

enum Gender {
  M,
  F
}

class GenderField extends StatefulWidget {
  const GenderField({super.key});

  @override
  State<GenderField> createState() => _GenderFieldState();
}

class _GenderFieldState extends State<GenderField> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,

      child: Row(
        children: [
          Text(LocalTxt().gender,),

          Expanded(
            child: RadioListTile<Gender>(
              title: Text(LocalTxt().male),
              groupValue: InputFieldsController.gender,
              value: Gender.M,
              onChanged:(Gender? value) {
                if(value != null){
                  setState(() {
                    InputFieldsController.gender = value;
                  });
                }
              },
            ),
          ),

          Expanded(
            child: RadioListTile<Gender>(
              title: Text(LocalTxt().female),
              groupValue: InputFieldsController.gender,
              value: Gender.F,
              onChanged:(Gender? value) {
                if(value != null){
                  setState(() {
                    InputFieldsController.gender = value;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
