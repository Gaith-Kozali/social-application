import 'dart:io';

class User {
  User(
      {required this.name,
      required this.email,
      required this.password,
      required this.phone,
      required this.birthDate,
      required this.confirmationCode,
      this.picture,
      this.backGroundPicture,
      this.job,
      this.bio,
      required this.connects,
      required this.followers});
  String email;
  String password;
  String name;
  String phone;
  DateTime birthDate;
  String confirmationCode;
  File? picture;
  File? backGroundPicture;
  String? job;
  String? bio;
  String followers;
  String connects;
}
