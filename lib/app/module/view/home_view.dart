import 'package:flutter/material.dart';
import 'package:flutter_ml_kit_pose_detection/app/module/view/widgets/camera_view.dart';
import 'package:get/get.dart';
import 'controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (context) {
      return CameraView(
        title: 'Pose Detector',
        customPaint: controller.customPaint,
        text: controller.text,
        onImage: (inputImage) {
          controller.processImage(inputImage);
        },
      );
    });
  }
}