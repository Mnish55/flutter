import '../controller/save_as_pdf_controller.dart';
import '../models/saveaspdf_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SaveaspdfItemWidget extends StatelessWidget {
  SaveaspdfItemWidget(this.saveaspdfItemModelObj);

  SaveaspdfItemModel saveaspdfItemModelObj;

  var controller = Get.find<SaveAsPdfController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.img1200pxpdffileicon,
          height: getVerticalSize(
            29,
          ),
          width: getHorizontalSize(
            24,
          ),
          margin: getMargin(
            bottom: 19,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 18,
            top: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  saveaspdfItemModelObj.weburlTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyMedium16Bluegray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  "msg_03_04_2021_7_5".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyRegular14Bluegray400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
