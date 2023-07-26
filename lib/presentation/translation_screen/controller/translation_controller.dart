import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/presentation/translation_screen/models/translation_model.dart';

class TranslationController extends GetxController {
  Rx<TranslationModel> translationModelObj = TranslationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
