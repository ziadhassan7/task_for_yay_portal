import 'package:flutter/material.dart';
import 'form/presentation/widget/localization_button.dart';

//ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;

  /// AppBar's title
  final String title;

  const CustomAppBar(
      this.context, {
        super.key,
        required this.title,
      });

  static const double _fixedHeight = 60;

  @override
  Size get preferredSize =>
      const Size.fromHeight(CustomAppBar._fixedHeight);



  //////////////////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {

    return AppBar(
      //color
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Row(
        children: [
          //Page Title
          Text(title),

          const Spacer(),

          //Icon
          const LocalizationBtn(),
        ],
      ),
    );
  }
}
