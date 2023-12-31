import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/presentation/dynamic_content_screen/models/dynamic_content_model.dart';

class DynamicContentController extends GetxController {
  Rx<DynamicContentModel> dynamicContentModelObj = DynamicContentModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
