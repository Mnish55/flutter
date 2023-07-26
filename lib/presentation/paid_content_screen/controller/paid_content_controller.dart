import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/presentation/paid_content_screen/models/paid_content_model.dart';

class PaidContentController extends GetxController {
  Rx<PaidContentModel> paidContentModelObj = PaidContentModel().obs;

  Rx<bool> isCheckbox = false.obs;

  Rx<bool> isCheckbox1 = false.obs;

  Rx<bool> isCheckbox2 = false.obs;

  Rx<bool> isCheckbox3 = false.obs;

  Rx<bool> isCheckbox4 = false.obs;

  Rx<bool> isCheckbox5 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
