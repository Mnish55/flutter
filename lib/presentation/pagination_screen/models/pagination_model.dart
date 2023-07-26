import 'package:get/get.dart';
import 'pagination_item_model.dart';

class PaginationModel {
  Rx<List<PaginationItemModel>> paginationItemList =
      Rx(List.generate(3, (index) => PaginationItemModel()));
}
