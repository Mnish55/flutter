import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  TextEditingController group10198Controller = TextEditingController();

  TextEditingController group10198OneController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.contentManagementScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
    group10198Controller.dispose();
    group10198OneController.dispose();
  }
}
