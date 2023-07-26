import 'controller/translation_controller.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:manish_s_application2/widgets/app_bar/custom_app_bar.dart';

class TranslationScreen extends GetWidget<TranslationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray900,
                    margin: getMargin(left: 16, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft19();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_translation".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 36, bottom: 36),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 22, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Text("lbl_english".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium18Bluegray400)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowdownBlueGray400,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 8, top: 2)),
                                Spacer(flex: 50),
                                CustomImageView(
                                    svgPath: ImageConstant.imgBiarrowdownup,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 3)),
                                Spacer(flex: 50),
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Text("lbl_spanish".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium18Bluegray400)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowdownBlueGray400,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 8, top: 2))
                              ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100,
                              indent: getHorizontalSize(16),
                              endIndent: getHorizontalSize(16))),
                      Padding(
                          padding: getPadding(left: 16, top: 15, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolume24x24,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 12, top: 4, bottom: 2),
                                    child: Text("lbl_english".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold14Bluegray900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose1,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 18, top: 27),
                              child: Text("msg_i_m_flat_earther".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtGilroyMedium16Bluegray900))),
                      Padding(
                          padding: getPadding(left: 45, top: 34, right: 45),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCamera,
                                              height: getSize(24),
                                              width: getSize(24)),
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("lbl_camera".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium12Bluegray900))
                                        ])),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgEdit1,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_handwriting".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyMedium12Bluegray900))
                                    ]),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMicrophoneoutline,
                                              height: getSize(24),
                                              width: getSize(24)),
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("lbl_voice".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium12Bluegray900))
                                        ]))
                              ])),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 30, bottom: 5),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillBlueA700,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgVolume1,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding: getPadding(
                                              left: 12, top: 3, bottom: 3),
                                          child: Text("lbl_french".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold14WhiteA700)),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgStar24x24,
                                          height: getSize(24),
                                          width: getSize(24))
                                    ]),
                                    Padding(
                                        padding: getPadding(left: 2, top: 20),
                                        child: Text("lbl_je_suis_un_fou".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtGilroyMedium16WhiteA700)),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding:
                                                getPadding(top: 43, bottom: 4),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFluentcopy24regular,
                                                      height: getSize(24),
                                                      width: getSize(24)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgOverflowmenu24x24,
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      margin:
                                                          getMargin(left: 24))
                                                ])))
                                  ])))
                    ]))));
  }

  onTapArrowleft19() {
    Get.back();
  }
}
