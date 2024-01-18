import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_manager/photo_manager.dart';

class GalleryService {
  Future<List<AssetEntity>> getAllImage() async {
    List<AssetPathEntity> rootAlbum = [];
    List<AssetEntity> entities = [];
    PermissionState permission = await PhotoManager.requestPermissionExtend();
    if (permission.isAuth) {
      rootAlbum = await PhotoManager.getAssetPathList(
          type: RequestType.image, onlyAll: true);
      final int count =
          await PhotoManager.getAssetCount(type: RequestType.image);
      // get the picture inside the album
      entities = await rootAlbum.first.getAssetListRange(start: 0, end: count);
      print(
          "frommmm the services the count is$count and enities ${entities.first.file}");
    } else {
      PhotoManager.openSetting();
    }
    return entities;
  }

  static Future<File?> takePhoto() async {
    final ImagePicker picker = ImagePicker();
    File? photo = await picker
        .pickImage(source: ImageSource.camera)
        .then((value) => value != null ? File(value.path) : null);
    return photo;
  }

  static Future<File?> takeVideo() async {
    final ImagePicker picker = ImagePicker();
    File? video = await picker
        .pickVideo(source: ImageSource.camera)
        .then((value) => value != null ? File(value.path) : null);
    return video;
  }

  void openCamera(BuildContext context) async {}
}
