import '../controller/dynamic_content_controller.dart';
import '../models/listunsplashfr2iwkpsiy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Listunsplashfr2iwkpsiyItemWidget extends StatelessWidget {
  Listunsplashfr2iwkpsiyItemWidget(this.listunsplashfr2iwkpsiyItemModelObj);

  Listunsplashfr2iwkpsiyItemModel listunsplashfr2iwkpsiyItemModelObj;

  var controller = Get.find<DynamicContentController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplashfr2iwkpsiy91x101,
          height: getVerticalSize(
            91,
          ),
          width: getHorizontalSize(
            101,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              6,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 19,
            bottom: 18,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listunsplashfr2iwkpsiyItemModelObj.hustleTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold20Bluegray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Obx(
                  () => Text(
                    listunsplashfr2iwkpsiyItemModelObj
                        .youngMillftUnSapaTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyRegular16Bluegray400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
