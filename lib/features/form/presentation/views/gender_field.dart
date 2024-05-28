import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/core/localization/localization.dart';
import 'package:task_for_yay_portal/features/form/presentation/controllers/input_fields_controller.dart';
import 'package:task_for_yay_portal/features/form/presentation/widget/text_label.dart';

import '../../../../core/styles/default_padding.dart';

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
    return Padding(
      padding: defaultPadding,

      child: Directionality(
        textDirection: TextDirection.ltr,

        child: Row(
          children: [
            TextLabel(label: LocalTxt().gender,),

            Expanded(
              flex: 20,
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
              flex: 23,
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
      ),
    );
  }
}
