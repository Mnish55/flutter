import 'controller/paid_content_controller.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:manish_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:manish_s_application2/widgets/custom_button.dart';
import 'package:manish_s_application2/widgets/custom_checkbox.dart';
import 'package:manish_s_application2/widgets/custom_icon_button.dart';

class PaidContentScreen extends GetWidget<PaidContentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(55),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray900,
                    margin: getMargin(left: 16, top: 13, bottom: 18),
                    onTap: () {
                      onTapArrowleft13();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_pricing_plans".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 30, bottom: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 24, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getHorizontalSize(178),
                                    padding: getPadding(all: 16),
                                    decoration: AppDecoration.outlineGray60019
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder6),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(children: [
                                            CustomIconButton(
                                                height: 32,
                                                width: 32,
                                                variant: IconButtonVariant
                                                    .FillGray300,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocation20x20)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 8, top: 4, bottom: 4),
                                                child: Text("lbl_basic".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroySemiBold20Green600))
                                          ]),
                                          Container(
                                              width: getHorizontalSize(90),
                                              margin: getMargin(top: 14),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .fromHex(
                                                                    "#ff74839d"),
                                                            fontSize:
                                                                getFontSize(12),
                                                            fontFamily:
                                                                'Gilroy',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                    TextSpan(
                                                        text: "159".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .fromHex(
                                                                    "#ff000000"),
                                                            fontSize:
                                                                getFontSize(36),
                                                            fontFamily:
                                                                'Gilroy',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                    TextSpan(
                                                        text: "/year".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .fromHex(
                                                                    "#ff74839d"),
                                                            fontSize:
                                                                getFontSize(12),
                                                            fontFamily:
                                                                'Gilroy',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600))
                                                  ]),
                                                  textAlign: TextAlign.left)),
                                          Padding(
                                              padding: getPadding(
                                                  top: 15, bottom: 2),
                                              child: Text("lbl_13_25_month".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium12))
                                        ])),
                                Container(
                                    width: getHorizontalSize(178),
                                    margin: getMargin(left: 24),
                                    padding: getPadding(all: 16),
                                    decoration: AppDecoration.outlineGray60019
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder6),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(children: [
                                            CustomIconButton(
                                                height: 32,
                                                width: 32,
                                                variant: IconButtonVariant
                                                    .FillBlue5001,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgTicket20x20)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 8, top: 4, bottom: 4),
                                                child: Text("lbl_premium".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroySemiBold20BlueA700))
                                          ]),
                                          Container(
                                              width: getHorizontalSize(95),
                                              margin: getMargin(top: 14),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .fromHex(
                                                                    "#ff74839d"),
                                                            fontSize:
                                                                getFontSize(12),
                                                            fontFamily:
                                                                'Gilroy',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                    TextSpan(
                                                        text: "259".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .fromHex(
                                                                    "#ff000000"),
                                                            fontSize:
                                                                getFontSize(36),
                                                            fontFamily:
                                                                'Gilroy',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                    TextSpan(
                                                        text: "/year".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .fromHex(
                                                                    "#ff74839d"),
                                                            fontSize:
                                                                getFontSize(12),
                                                            fontFamily:
                                                                'Gilroy',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600))
                                                  ]),
                                                  textAlign: TextAlign.left)),
                                          Padding(
                                              padding: getPadding(
                                                  top: 15, bottom: 2),
                                              child: Text("lbl_21_59_month".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium12))
                                        ]))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 55),
                              child: Text("msg_choose_your_plan".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtGilroyMedium18Bluegray400))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 17),
                              padding: getPadding(
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.outlineBluegray1002,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(children: [
                                          Text("lbl_features".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroySemiBold16),
                                          Spacer(),
                                          Text("lbl_basic".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroySemiBold16),
                                          Padding(
                                              padding: getPadding(left: 24),
                                              child: Text("lbl_premium".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroySemiBold16))
                                        ])),
                                    Container(
                                        height: getVerticalSize(20),
                                        width: getHorizontalSize(374),
                                        margin: getMargin(top: 26),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Obx(() =>
                                                      CustomCheckbox(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          text:
                                                              "msg_lorem_ipsum_dolor5"
                                                                  .tr,
                                                          value: controller
                                                              .isCheckbox.value,
                                                          fontStyle:
                                                              CheckboxFontStyle
                                                                  .GilroyRegular14,
                                                          onChange: (value) {
                                                            controller
                                                                .isCheckbox
                                                                .value = value;
                                                          }))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Obx(() =>
                                                      CustomCheckbox(
                                                          alignment:
                                                              Alignment.center,
                                                          text:
                                                              "msg_lorem_ipsum_dolor5"
                                                                  .tr,
                                                          value: controller
                                                              .isCheckbox1
                                                              .value,
                                                          fontStyle:
                                                              CheckboxFontStyle
                                                                  .GilroyRegular14,
                                                          onChange: (value) {
                                                            controller
                                                                .isCheckbox1
                                                                .value = value;
                                                          })))
                                            ])),
                                    Container(
                                        height: getVerticalSize(39),
                                        width: getHorizontalSize(374),
                                        margin: getMargin(top: 19),
                                        child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Obx(() =>
                                                      CustomCheckbox(
                                                          alignment:
                                                              Alignment.center,
                                                          text:
                                                              "msg_lorem_ipsum_dolor6"
                                                                  .tr,
                                                          value: controller
                                                              .isCheckbox2
                                                              .value,
                                                          fontStyle:
                                                              CheckboxFontStyle
                                                                  .GilroyRegular14,
                                                          onChange: (value) {
                                                            controller
                                                                .isCheckbox2
                                                                .value = value;
                                                          }))),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMenu1,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  margin: getMargin(right: 82))
                                            ])),
                                    Container(
                                        height: getVerticalSize(20),
                                        width: getHorizontalSize(374),
                                        margin: getMargin(top: 19),
                                        child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Obx(() =>
                                                      CustomCheckbox(
                                                          alignment:
                                                              Alignment.center,
                                                          text:
                                                              "msg_lorem_ipsum_dolor5"
                                                                  .tr,
                                                          value: controller
                                                              .isCheckbox3
                                                              .value,
                                                          fontStyle:
                                                              CheckboxFontStyle
                                                                  .GilroyRegular14,
                                                          onChange: (value) {
                                                            controller
                                                                .isCheckbox3
                                                                .value = value;
                                                          }))),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMenu1,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  margin: getMargin(right: 82))
                                            ])),
                                    Container(
                                        height: getVerticalSize(20),
                                        width: getHorizontalSize(374),
                                        margin: getMargin(top: 18),
                                        child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Obx(() =>
                                                      CustomCheckbox(
                                                          alignment:
                                                              Alignment.center,
                                                          text:
                                                              "msg_lorem_ipsum_dolor5"
                                                                  .tr,
                                                          value: controller
                                                              .isCheckbox4
                                                              .value,
                                                          fontStyle:
                                                              CheckboxFontStyle
                                                                  .GilroyRegular14,
                                                          onChange: (value) {
                                                            controller
                                                                .isCheckbox4
                                                                .value = value;
                                                          }))),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMenu1,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  margin: getMargin(right: 82))
                                            ])),
                                    Container(
                                        height: getVerticalSize(20),
                                        width: getHorizontalSize(374),
                                        margin: getMargin(top: 18),
                                        child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Obx(() =>
                                                      CustomCheckbox(
                                                          alignment:
                                                              Alignment.center,
                                                          text:
                                                              "msg_lorem_ipsum_dolor5"
                                                                  .tr,
                                                          value: controller
                                                              .isCheckbox5
                                                              .value,
                                                          fontStyle:
                                                              CheckboxFontStyle
                                                                  .GilroyRegular14,
                                                          onChange: (value) {
                                                            controller
                                                                .isCheckbox5
                                                                .value = value;
                                                          }))),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMenu1,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  margin: getMargin(right: 82))
                                            ]))
                                  ]))),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "msg_choose_your_plan".tr,
                          margin: getMargin(left: 16, right: 16, bottom: 54))
                    ]))));
  }

  onTapArrowleft13() {
    Get.back();
  }
}
