import 'package:flutter/material.dart';
import '../../../../core/localization/localization.dart';

class LocalizationBtn extends StatelessWidget {
  const LocalizationBtn({super.key});

  @override
  Widget build(BuildContext context) {

    Locals currentLanguage = LocalizationHandler.getCurrentLocal(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),

      child: InkWell(
          onTap: () => LocalizationHandler.swapLocalization(context),

          child: Text(getButtonLabel(currentLanguage))));
  }

  getButtonLabel(Locals currentLanguage){
    if(currentLanguage == Locals.ar) return 'EN';

    return 'AR';
  }
}
