import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/presentation/document_opener_screen/models/document_opener_model.dart';

class DocumentOpenerController extends GetxController {
  Rx<DocumentOpenerModel> documentOpenerModelObj = DocumentOpenerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
