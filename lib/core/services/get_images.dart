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
      entities = await rootAlbum.first.getAssetListRange(start: 0, end: count);
      print(
          "frommmm the services the count is$count and enities ${entities.first.file}");
    } else {
      PhotoManager.openSetting();
    }
    return entities;
  }
}

// void initializeGallery() async {
//   PermissionState permission = await PhotoManager.requestPermissionExtend();
//   if (permission.isAuth) {
//     List<AssetPathEntity> rootAlbums = await PhotoManager.getAssetPathList(
//       type: RequestType.image,
//       onlyAll: true,
//     );
//     if (rootAlbums.isNotEmpty) {
//       //int count = await rootAlbums.getAssetCount();
//       entities = await rootAlbums[0].getAssetListRange(start: 0, end: 100);
//     }
//   } else {
//     PhotoManager.openSetting();
//   }
//
//   setState(() async{
//     image = await entities.first.file;
//   });
// }
