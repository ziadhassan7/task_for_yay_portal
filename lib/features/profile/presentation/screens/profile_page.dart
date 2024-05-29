import 'package:easy_localization/easy_localization.dart' as t;
import 'package:flutter/material.dart';
import '../../../../core/localization/localization.dart';
import '../../../common/custom_appbar.dart';
import '../../../form/data/datasource/user_data.dart';
import '../views/info_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, title: LocalTxt().profile,),

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
                title: LocalTxt().email,
                data: UserData.getEmail()),

              //Password
              InfoField(
                title: LocalTxt().password,
                data: UserData.getPassword()),

              //Gender
              InfoField(
                title: LocalTxt().gender,
                data: UserData.getGender()),

              //BirthDate
              InfoField(
                title: LocalTxt().birthDate,
                data: UserData.getBirthDate()),

              const Spacer(),

              // Open Location Button
              openLocation()
            ],
          ),
        ),
      ),
    );
  }


  Widget openLocation(){
    return ElevatedButton(
        onPressed: (){

        },
        child: Text(LocalTxt().openLocationButton)
    );
  }

  String getLocation(){
    return UserData.getLocation();
  }
}

