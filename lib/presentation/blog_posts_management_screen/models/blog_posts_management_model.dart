import 'package:get/get.dart';
import 'listblogsuploaded_item_model.dart';

class BlogPostsManagementModel {
  Rx<List<ListblogsuploadedItemModel>> listblogsuploadedItemList =
      Rx(List.generate(3, (index) => ListblogsuploadedItemModel()));
}
