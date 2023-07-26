import 'controller/surveys_controller.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';

class SurveysDialog extends StatelessWidget {
  SurveysDialog(this.controller);

  SurveysController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        298,
      ),
      padding: getPadding(
        left: 40,
        top: 24,
        right: 40,
        bottom: 24,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              top: 5,
            ),
            child: Text(
              "msg_rate_your_experience".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroySemiBold18Bluegray900,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 13,
            ),
            child: Text(
              "msg_are_you_satisfied".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroyMedium14Bluegray400,
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgFrame9866,
            height: getVerticalSize(
              50,
            ),
            width: getHorizontalSize(
              150,
            ),
            margin: getMargin(
              top: 25,
            ),
          ),
        ],
      ),
    );
  }
}
