// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
//
// late List<CameraDescription> cameras;
//
// class OpenCameraScreen extends StatefulWidget {
//   const OpenCameraScreen({super.key});
//
//   @override
//   State<OpenCameraScreen> createState() => _OpenCameraScreenState();
// }
//
// class _OpenCameraScreenState extends State<OpenCameraScreen> {
//   late CameraController controller;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(cameras[0], ResolutionPreset.max);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     }).catchError((Object e) {
//       if (e is CameraException) {
//         switch (e.code) {
//           case 'CameraAccessDenied':
//             // Handle access errors here.
//             break;
//           default:
//             // Handle other errors here.
//             break;
//         }
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return MaterialApp(
//       home: CameraPreview(controller),
//     );
//   }
// }
