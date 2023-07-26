import '../controller/notes_controller.dart';
import '../models/notes_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class NotesItemWidget extends StatelessWidget {
  NotesItemWidget(this.notesItemModelObj);

  NotesItemModel notesItemModelObj;

  var controller = Get.find<NotesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 10,
        top: 9,
        right: 10,
        bottom: 9,
      ),
      decoration: AppDecoration.fillBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              notesItemModelObj.aprCounterTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroyRegular14Bluegray400,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 6,
            ),
            child: Obx(
              () => Text(
                notesItemModelObj.explorationideasTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroySemiBold16,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 8,
            ),
            child: Row(
              children: [
                Container(
                  width: getHorizontalSize(
                    47,
                  ),
                  padding: getPadding(
                    left: 5,
                    top: 2,
                    right: 5,
                    bottom: 2,
                  ),
                  decoration: AppDecoration.txtFillBluegray100.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                  ),
                  child: Text(
                    "lbl_design".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular12,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    74,
                  ),
                  margin: getMargin(
                    left: 7,
                  ),
                  padding: getPadding(
                    left: 5,
                    top: 2,
                    right: 5,
                    bottom: 2,
                  ),
                  decoration: AppDecoration.txtFillBluegray100.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                  ),
                  child: Text(
                    "lbl_productivity".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular12,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    24,
                  ),
                  margin: getMargin(
                    left: 7,
                  ),
                  padding: getPadding(
                    left: 5,
                    top: 3,
                    right: 5,
                    bottom: 3,
                  ),
                  decoration: AppDecoration.txtFillBluegray100.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                  ),
                  child: Text(
                    "lbl_12".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              121,
            ),
            margin: getMargin(
              left: 10,
              top: 10,
              bottom: 1,
            ),
            child: Obx(
              () => Text(
                notesItemModelObj.descriptionTxt.value,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroyRegular14Black90002,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
