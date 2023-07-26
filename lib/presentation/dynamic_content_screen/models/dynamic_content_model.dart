import 'package:get/get.dart';
import 'sliderunsplashrncpixixooy_item_model.dart';
import 'listunsplashfr2iwkpsiy_item_model.dart';

class DynamicContentModel {
  Rx<List<SliderunsplashrncpixixooyItemModel>>
      sliderunsplashrncpixixooyItemList =
      Rx(List.generate(1, (index) => SliderunsplashrncpixixooyItemModel()));

  Rx<List<Listunsplashfr2iwkpsiyItemModel>> listunsplashfr2iwkpsiyItemList =
      Rx(List.generate(3, (index) => Listunsplashfr2iwkpsiyItemModel()));
}
