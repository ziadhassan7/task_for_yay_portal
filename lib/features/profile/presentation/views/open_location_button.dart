import 'package:flutter/material.dart';
import '../../../../core/localization/localization.dart';
import '../../../../core/map_util.dart';
import '../../../form/data/datasource/user_data.dart';


class OpenLocationButton extends StatelessWidget {
  const OpenLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    LocalTxt localTxt = LocalTxt(context);

    return ElevatedButton(
        onPressed: (){
          List<String> location = getLocation().split(',');
          MapUtils.openMap(location[0], location[1]);
        },
        child: Text(localTxt.openLocationButton)
    );
  }

  String getLocation(){
    return UserData.getLocation();
  }
}


