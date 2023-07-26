import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/presentation/pagination_screen/models/pagination_model.dart';
import 'package:flutter/material.dart';

class PaginationController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  Rx<PaginationModel> paginationModelObj = PaginationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
  }
}
