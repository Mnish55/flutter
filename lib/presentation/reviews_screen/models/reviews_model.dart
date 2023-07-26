import 'package:get/get.dart';
import 'liststarcounter_item_model.dart';
import 'listgroup9779_item_model.dart';

class ReviewsModel {
  Rx<List<ListstarcounterItemModel>> liststarcounterItemList =
      Rx(List.generate(2, (index) => ListstarcounterItemModel()));

  Rx<List<Listgroup9779ItemModel>> listgroup9779ItemList =
      Rx(List.generate(2, (index) => Listgroup9779ItemModel()));
}
