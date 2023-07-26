import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/presentation/surveys_dialog/models/surveys_model.dart';

class SurveysController extends GetxController {
  Rx<SurveysModel> surveysModelObj = SurveysModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
