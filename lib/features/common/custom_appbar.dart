import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/core/app_router.dart';
import 'package:task_for_yay_portal/features/form/data/datasource/user_data.dart';
import 'package:task_for_yay_portal/features/form/presentation/screens/form_page.dart';
import '../form/presentation/widget/localization_button.dart';

//ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;

  /// AppBar's title
  final String title;
  final bool allowLeading;

  const CustomAppBar(
      this.context, {
        super.key,
        required this.title,
        this.allowLeading = false
      });

  static const double _fixedHeight = 60;

  @override
  Size get preferredSize =>
      const Size.fromHeight(CustomAppBar._fixedHeight);



  //////////////////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {

    return AppBar(
      automaticallyImplyLeading: false,
      //color
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      title: Directionality(
        textDirection: TextDirection.ltr,

        child: Row(
          children: [
            Visibility(
              visible: allowLeading,

              child: IconButton(
                onPressed: () {
                  UserData.clearUser();
                  AppRouter.navigateTo(context, FormPage(), replace: true);
                },
                icon: const Icon(Icons.arrow_back_ios_rounded),
              ),
            ),

            //Page Title
            Text(title),

            const Spacer(),

            //Icon
            const LocalizationBtn(),
          ],
        ),
      ),
    );
  }
}
