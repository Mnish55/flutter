import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/presentation/save_as_pdf_screen/models/save_as_pdf_model.dart';

class SaveAsPdfController extends GetxController {
  Rx<SaveAsPdfModel> saveAsPdfModelObj = SaveAsPdfModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
