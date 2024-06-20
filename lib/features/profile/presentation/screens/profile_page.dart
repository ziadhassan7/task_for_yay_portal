import 'package:easy_localization/easy_localization.dart' as t;
import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/features/profile/presentation/views/open_location_button.dart';
import '../../../../core/localization/localization.dart';
import '../../../common/custom_appbar.dart';
import '../../../form/data/datasource/user_data.dart';
import '../views/info_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    LocalTxt localTxt = LocalTxt(context);

    return Scaffold(
      appBar: CustomAppBar(context, title: localTxt.profile, allowLeading: true,),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),

        child: Directionality(
          textDirection: TextDirection.ltr,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              //Name
              InfoField(
                title: t.tr('name', context: context),
                data: UserData.getUserName()),

              //Email
              InfoField(
                title: localTxt.email,
                data: UserData.getEmail()),

              //Password
              InfoField(
                title: localTxt.password,
                data: UserData.getPassword()),

              //Gender
              InfoField(
                title: localTxt.gender,
                data: UserData.getGender()),

              //BirthDate
              InfoField(
                title: localTxt.birthDate,
                data: UserData.getBirthDate()),

              const Spacer(),

              // Open Location Button
              const OpenLocationButton(),
            ],
          ),
        ),
      ),
    );
  }
}

