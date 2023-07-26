import 'controller/content_management_controller.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:manish_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:manish_s_application2/widgets/custom_switch.dart';

class ContentManagementScreen extends GetWidget<ContentManagementController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray900,
                    margin: getMargin(left: 16, top: 12, bottom: 17),
                    onTap: () {
                      onTapArrowleft3();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_content_management".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 20, right: 16, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle1301236x396,
                          height: getVerticalSize(236),
                          width: getHorizontalSize(396),
                          radius: BorderRadius.circular(getHorizontalSize(6))),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Text("lbl_contents".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold20)),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("lbl_playlist".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray400,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 1))
                              ])),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_albums".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray400,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_artists".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray400,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("lbl_saved_songs".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray400,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 1))
                              ])),
                      Padding(
                          padding: getPadding(top: 19, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("msg_send_automatically".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                Obx(() => CustomSwitch(
                                    value: controller.isSelectedSwitch.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch.value = value;
                                    }))
                              ]))
                    ]))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
