import '../controller/pagination_controller.dart';
import '../models/pagination_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class PaginationItemWidget extends StatelessWidget {
  PaginationItemWidget(this.paginationItemModelObj);

  PaginationItemModel paginationItemModelObj;

  var controller = Get.find<PaginationController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getVerticalSize(
          217,
        ),
        width: getHorizontalSize(
          396,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle19101x118,
              height: getVerticalSize(
                101,
              ),
              width: getHorizontalSize(
                118,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  4,
                ),
              ),
              alignment: Alignment.topRight,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: getHorizontalSize(
                  258,
                ),
                margin: getMargin(
                  top: 3,
                ),
                child: Text(
                  "msg_battlegrounds_mobile".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold18Bluegray900,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: getHorizontalSize(
                  385,
                ),
                child: Text(
                  "msg_krafton_has_been2".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyMedium14Bluegray40090,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
