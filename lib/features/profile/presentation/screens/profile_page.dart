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
        children: [
          Text(getUserName())
        ],
      ),
    );
  }

  String getUserName(){
    return UserData.getUserName();
  }

  String getLocation(){
    return UserData.getLocation();
  }
}

