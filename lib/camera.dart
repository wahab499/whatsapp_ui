import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraApp extends StatefulWidget {
  const CameraApp({super.key});

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// class CameraApp extends StatefulWidget {
//   final List<CameraDescription> cameras;
//   const CameraApp({super.key, required this.cameras});

//   @override
//   State<CameraApp> createState() => _CameraAppState();
// }

// class _CameraAppState extends State<CameraApp> {
//   @override
//   Widget build(BuildContext context) {
//   late CameraController controller;
//   late XFile? imageFile; // Variable to store the captured image file

//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(widget.cameras[1], ResolutionPreset.max);
//     controller
//         .initialize()
//         .then((_) {
//           if (!mounted) {
//             return;
//           }
//           setState(() {});
//         })
//         .catchError((Object e) {
//           if (e is CameraException) {
//             switch (e.code) {
//               case 'CameraAccessDenied':
//                 // Handle access errors here.
//                 break;
//               default:
//                 // Handle other errors here.
//                 break;
//             }
//           }
//         });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           leading: BackButton(
//             color: Colors.white,
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           centerTitle: true,
//           title: Text('Take a picture', style: TextStyle(color: Colors.white)),
//         ),
//         body: Stack(
//           children: <Widget>[
//             CameraPreview(controller),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Padding(
//                 padding: const EdgeInsets.only(bottom: 16.0),
//                 child: FloatingActionButton(
//                   onPressed: () {
//                     _takePicture(); // Call method to take picture
//                   },
//                   child: Icon(Icons.camera),
//                   backgroundColor: Colors.white,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Method to take a picture
//   void _takePicture() async {
//     try {
//       final XFile picture = await controller.takePicture();
//       setState(() {
//         imageFile = picture;
//       });
//       // Navigate to the image view page after capturing the image
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ImageViewPage(imagePath: imageFile!.path),
//         ),
//       );
//     } catch (e) {
//       print("Error taking picture: $e");
//     }
//   }
// }

// class ImageViewPage extends StatefulWidget {
//   final String imagePath;
//   const ImageViewPage({super.key, required this.imagePath});

//   @override
//   State<ImageViewPage> createState() => _ImageViewPageState();
// }

// class _ImageViewPageState extends State<ImageViewPage> {
//   bool isLoading = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Captured Image')),
//       body: Center(child: Image.file(File(widget.imagePath))),
//     );
//   }
//}
