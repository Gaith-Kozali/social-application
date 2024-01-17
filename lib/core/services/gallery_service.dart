import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:socalize_gaith_kozali/route/app_route.dart';

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

  void takePhoto() async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    photo ?? File(photo!.path);
  }

  void takeVideo() async {
    final ImagePicker picker = ImagePicker();
    final XFile? video = await picker.pickVideo(source: ImageSource.camera);
    video ?? File(video!.path);
  }

  void openCamera(BuildContext context) async {}
}
