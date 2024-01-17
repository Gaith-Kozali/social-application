import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:photo_manager/photo_manager.dart';

import '../../../../core/services/gallery_service.dart';

part 'gallery_event.dart';
part 'gallery_state.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  GalleryService galleryService;
  GalleryBloc(this.galleryService) : super(GalleryInitial()) {
    on<GalleryEvent>((event, emit) async {
      if (event is GetImageEvent) {
        List<AssetEntity> assetEntity = await galleryService.getAllImage();
        // get the file of image to display before send it because the future
        List<File?> fileImage = await Future.wait<File?>(
            assetEntity.map((e) async => await e.file).toList());

        emit(GetImageState(assetEntity, fileImage));
      }
    });
  }
}
