part of 'gallery_bloc.dart';

@immutable
abstract class GalleryState {}

class GalleryInitial extends GalleryState {}

class GetImageState extends GalleryState {
  GetImageState(this.assetEntity, this.fileImage);
  List<AssetEntity> assetEntity;
  List<File?> fileImage;
}
