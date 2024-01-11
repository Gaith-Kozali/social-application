import 'dart:io';

class User {
  User(
      {required this.name,
      required this.email,
      required this.password,
      required this.phone,
      required this.birthDate,
      required this.confirmationCode,
      required this.picture});
  String email;
  String password;
  String name;
  String phone;
  DateTime birthDate;
  File picture;
  String confirmationCode;
}
