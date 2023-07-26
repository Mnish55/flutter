import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/presentation/content_moderation_dialog/models/content_moderation_model.dart';

class ContentModerationController extends GetxController {
  Rx<ContentModerationModel> contentModerationModelObj =
      ContentModerationModel().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
