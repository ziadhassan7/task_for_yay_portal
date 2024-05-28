import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/core/localization/localization.dart';
import 'package:task_for_yay_portal/features/form/presentation/views/gender_field.dart';
import 'package:task_for_yay_portal/features/form/presentation/views/name_field.dart';
import '../../../common/custom_appbar.dart';
import '../views/email_field.dart';
import '../views/password_field.dart';
import '../widget/submit_button.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// Title , Localization Button
      appBar: CustomAppBar(context, title: LocalTxt().form,),

      ///----------------------------
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),

        child: Column(

          children: [

            /// Name
            NameField(),

            /// Email
            EmailField(),

            /// Password
            PasswordField(),

            /// Gender
            GenderField(),

            /// Birthdate


            const Spacer(),

            ///Submit Button
            SubmitButton(),
          ],
        ),
      ),

    );
  }

}
