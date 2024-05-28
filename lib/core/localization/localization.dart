import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


enum Locals {
  en, ar
}

class LocalTxt {
  //Titles
  final String form = tr('form');
  final String profile = tr('profile');

  //Labels
  final String name = tr('name');
  final String email = tr('email');
  final String password = tr('password');


  //Buttons
  final String submitButton = tr('submit_btn');

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