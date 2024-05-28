import 'package:hive_flutter/adapters.dart';
import 'package:task_for_yay_portal/core/constants/hive_keys.dart';
import '../../../../core/hive/hive_client.dart';

class UserData{

  static final Box _hiveBox = HiveClient.instance.globalBox;


  ///                                                                           / Name
  static Future<void> updateUserName(String name) async {
    await _hiveBox.put(USER_NAME, name);
  }

  static String getUserName() {
    return _hiveBox.get(USER_NAME, defaultValue: 'NO NAME');
  }

  ///                                                                           / Email
  static Future<void> updateEmail(String email) async {
    await _hiveBox.put(USER_EMAIL, email);
  }

  static String getEmail() {
    return _hiveBox.get(USER_EMAIL, defaultValue: 'NO EMAIL');
  }

  ///                                                                           / Password
  static Future<void> updatePassword(String password) async {
    await _hiveBox.put(USER_PASSWORD, password);
  }

  static String getPassword() {
    return _hiveBox.get(USER_PASSWORD, defaultValue: 'NO PASSWORD');
  }

  ///                                                                           / Gender
  static Future<void> updateGender(String gender) async {
    await _hiveBox.put(USER_GENDER, gender);
  }

  static String getGender() {
    return _hiveBox.get(USER_GENDER, defaultValue: 'M');
  }

  ///                                                                           / BirthDate
  static Future<void> updateBirthDate(String birthDate) async {
    await _hiveBox.put(USER_BIRTHDATE, birthDate);
  }

  static String getBirthDate() {
    return _hiveBox.get(USER_BIRTHDATE, defaultValue: 'NULL');
  }

  ///                                                                           / Location
  static Future<void> updateLocation(String location) async {
    await _hiveBox.put(USER_LOCATION, location);
  }

  static String getLocation() {
    return _hiveBox.get(USER_LOCATION, defaultValue: 'NULL');
  }

}