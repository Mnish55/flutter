import 'controller/documents_controller.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:manish_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:manish_s_application2/widgets/custom_text_form_field.dart';

class DocumentsScreen extends GetWidget<DocumentsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                      onTapArrowleft6();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_categories".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 16, top: 12, right: 16, bottom: 16))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 20, right: 16, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group9694Controller,
                          hintText: "lbl_folder".tr,
                          variant: TextFormFieldVariant.FillBlue5001,
                          padding: TextFormFieldPadding.PaddingAll8,
                          fontStyle:
                              TextFormFieldFontStyle.GilroyMedium16BlueA700),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                  "lbl_ui_ux_designer".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroySemiBold18Bluegray900)),
                                          Padding(
                                              padding: getPadding(top: 6),
                                              child: Text(
                                                  "msg_modified_yesterday".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14Bluegray400))
                                        ])),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray400,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 24))
                              ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("msg_frontend_developer".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold18Bluegray900),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text(
                                                  "msg_modified_yesterday".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14Bluegray400))
                                        ])),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray400,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 24))
                              ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_php_developer".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold18Bluegray900),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text(
                                                  "msg_modified_yesterday".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14Bluegray400))
                                        ])),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray400,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 24))
                              ])),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group9887Controller,
                          hintText: "lbl_files".tr,
                          margin: getMargin(top: 25),
                          variant: TextFormFieldVariant.FillBlue5001,
                          padding: TextFormFieldPadding.PaddingAll8,
                          fontStyle:
                              TextFormFieldFontStyle.GilroyMedium16BlueA700,
                          textInputAction: TextInputAction.done),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_file_one_pdf".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold18Bluegray900),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text(
                                                  "msg_modified_on_27th".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14Bluegray400))
                                        ])),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray400,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 24))
                              ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 17, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_file_two_pdf".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold18Bluegray900),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text(
                                                  "msg_modified_on_23rd".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14Bluegray400))
                                        ])),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray400,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 24))
                              ]))
                    ]))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
