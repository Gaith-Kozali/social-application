import 'package:socalize_gaith_kozali/features/feature_authentication/user.dart';

// the image or video come from database link and display in NetworkImage

class Post {
  Post(this.user, this.text, this.media, this.dateTime);
  User user;
  String text;
  DateTime dateTime;
  String media;
}
