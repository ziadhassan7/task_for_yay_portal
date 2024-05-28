import 'package:flutter/material.dart';
import '../../../../core/localization/localization.dart';
import '../../../custom_appbar.dart';
import '../../../form/data/datasource/user_data.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, title: LocalTxt().profile,),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          //Name
          label(LocalTxt().name),
          Text(getUserName()),

          //Email
          label(LocalTxt().email),
          Text(getEmail()),

          //Password
          label(LocalTxt().password),
          Text(getPassword()),

          //Gender
          label(LocalTxt().gender),
          Text(getGender()),

          //BirthDate
          label(LocalTxt().birthDate),
          Text(getBirthDate()),

          // Open Location Button
          openLocation()
        ],
      ),
    );
  }

  /// Widgets:
  Widget label(String title, ){
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget openLocation(){
    return ElevatedButton(
        onPressed: (){

        },
        child: Text(LocalTxt().openLocationButton)
    );
  }

  /// Get Data:
  String getUserName(){
    return UserData.getUserName();
  }
  String getEmail(){
    return UserData.getEmail();
  }
  String getPassword(){
    return UserData.getPassword();
  }
  String getGender(){
    return UserData.getGender();
  }
  String getBirthDate(){
    return UserData.getBirthDate();
  }

  String getLocation(){
    return UserData.getLocation();
  }
}

