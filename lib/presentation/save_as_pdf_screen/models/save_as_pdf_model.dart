import 'package:get/get.dart';
import 'saveaspdf_item_model.dart';

class SaveAsPdfModel {
  Rx<List<SaveaspdfItemModel>> saveaspdfItemList =
      Rx(List.generate(5, (index) => SaveaspdfItemModel()));
}
