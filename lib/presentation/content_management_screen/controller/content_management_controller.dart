import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/presentation/content_management_screen/models/content_management_model.dart';

class ContentManagementController extends GetxController {
  Rx<ContentManagementModel> contentManagementModelObj =
      ContentManagementModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
