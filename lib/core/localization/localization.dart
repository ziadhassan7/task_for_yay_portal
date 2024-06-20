import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


enum Locals {
  en, ar
}

class LocalTxt{
  BuildContext context;

  LocalTxt(this.context);

  //Titles
  String get form => context.tr('form');
  String get profile => context.tr('profile');

  //Labels
  String get name => context.tr('name');
  String get email => context.tr('email');
  String get password => context.tr('password');

  String get gender => context.tr('gender');
  String get birthDate => context.tr('birthDate');

  //Buttons
  String get submitButton => context.tr('submit_btn');
  String get openLocationButton => context.tr('open_location_btn');

  //Radio Buttons
  String get male => context.tr('male');
  String get female => context.tr('female');

}


class LocalizationHandler {

  static swapLocalization(BuildContext context){

    Locals currentLanguage = getCurrentLocal(context);

    if(currentLanguage == Locals.en){
      context.setLocale(const Locale('ar'));
    }

    if(currentLanguage == Locals.ar){
      context.setLocale(const Locale('en'));
    }
  }


  static Locals getCurrentLocal(BuildContext context){

    if(context.locale == const Locale('ar')){
      return Locals.ar;
    }

    return Locals.en;
  }


  static Locale getLocalFromEnum(Locals local){

    switch (local){

      case Locals.en:
        return const Locale('en');
      case Locals.ar:
        return const Locale('en');
    }
  }
}