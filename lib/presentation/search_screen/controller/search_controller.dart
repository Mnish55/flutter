import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/presentation/search_screen/models/search_model.dart';
import 'package:flutter/material.dart';

class SearchController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  Rx<SearchModel> searchModelObj = SearchModel().obs;

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
