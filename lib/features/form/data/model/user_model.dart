import 'package:task_for_yay_portal/core/constants/db_constants/dictionary_db_constanst.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String password;
  final String gender;
  final String birth;
  final String location;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.gender,
    required this.birth,
    required this.location,
  });

  // CopyWith method
  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? password,
    String? gender,
    String? birth,
    String? location,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      gender: gender ?? this.gender,
      birth: birth ?? this.birth,
      location: location ?? this.location,
    );
  }

  // FromMap method
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map[columnUserId],
      name: map[columnName],
      email: map[columnEmail],
      password: map[columnPassword],
      gender: map[columnGender],
      birth: map[columnBirth],
      location: map[columnLocation],
    );
  }

  // ToMap method
  Map<String, dynamic> toMap() {
    return {
      columnUserId: id,
      columnName: name,
      columnEmail: email,
      columnPassword: password,
      columnGender: gender,
      columnBirth: birth,
      columnLocation: location,
    };
  }
}
