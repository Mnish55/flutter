import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/presentation/manage_blog_comments_screen/models/manage_blog_comments_model.dart';
import 'package:flutter/material.dart';

class ManageBlogCommentsController extends GetxController {
  TextEditingController group9887Controller = TextEditingController();

  Rx<ManageBlogCommentsModel> manageBlogCommentsModelObj =
      ManageBlogCommentsModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group9887Controller.dispose();
  }
}
