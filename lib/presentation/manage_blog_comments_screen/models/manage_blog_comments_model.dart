import 'package:get/get.dart';
import 'listprofileimglarge_item_model.dart';

class ManageBlogCommentsModel {
  Rx<List<ListprofileimglargeItemModel>> listprofileimglargeItemList =
      Rx(List.generate(2, (index) => ListprofileimglargeItemModel()));
}
