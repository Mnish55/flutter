import '../notes_screen/widgets/notes_item_widget.dart';
import 'controller/notes_controller.dart';
import 'models/notes_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:manish_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:manish_s_application2/widgets/custom_button.dart';
import 'package:manish_s_application2/widgets/custom_search_view.dart';

class NotesScreen extends GetWidget<NotesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(51),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray900,
                    margin: getMargin(left: 16, top: 13, bottom: 14),
                    onTap: () {
                      onTapArrowleft10();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_notes".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgPlus1,
                      margin: getMargin(left: 16, top: 13, right: 14)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin: getMargin(left: 16, top: 13, right: 30))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: controller.inputFieldController,
                          hintText: "lbl_search".tr,
                          margin: getMargin(top: 22),
                          prefix: Container(
                              margin: getMargin(
                                  left: 12, top: 12, right: 8, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(44)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 12, right: 12, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgMicrophone)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(44))),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomButton(
                                        height: getVerticalSize(48),
                                        text: "lbl_all_notes".tr,
                                        margin: getMargin(right: 8),
                                        variant: ButtonVariant.FillBlue5001,
                                        padding: ButtonPadding.PaddingT13,
                                        fontStyle: ButtonFontStyle
                                            .GilroyMedium16Black90001,
                                        prefixWidget: Container(
                                            margin: getMargin(right: 8),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCalendar)))),
                                Expanded(
                                    child: CustomButton(
                                        height: getVerticalSize(48),
                                        text: "lbl_favourites".tr,
                                        margin: getMargin(left: 8),
                                        variant: ButtonVariant.FillBlue5001,
                                        padding: ButtonPadding.PaddingT13,
                                        fontStyle: ButtonFontStyle
                                            .GilroyMedium16Black90001,
                                        prefixWidget: Container(
                                            margin: getMargin(right: 8),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgStar))))
                              ])),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomButton(
                                        height: getVerticalSize(48),
                                        text: "lbl_hidden".tr,
                                        margin: getMargin(right: 8),
                                        variant: ButtonVariant.FillBlue5001,
                                        padding: ButtonPadding.PaddingT13,
                                        fontStyle: ButtonFontStyle
                                            .GilroyMedium16Black90001,
                                        prefixWidget: Container(
                                            margin: getMargin(right: 8),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCall)))),
                                Expanded(
                                    child: CustomButton(
                                        height: getVerticalSize(48),
                                        text: "lbl_trash".tr,
                                        margin: getMargin(left: 8),
                                        variant: ButtonVariant.FillBlue5001,
                                        padding: ButtonPadding.PaddingT13,
                                        fontStyle: ButtonFontStyle
                                            .GilroyMedium16Black90001,
                                        prefixWidget: Container(
                                            margin: getMargin(right: 8),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgTrash))))
                              ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("lbl_recently_added".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18Bluegray900)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(189),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(16),
                                      crossAxisSpacing: getHorizontalSize(16)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.notesModelObj.value
                                  .notesItemList.value.length,
                              itemBuilder: (context, index) {
                                NotesItemModel model = controller.notesModelObj
                                    .value.notesItemList.value[index];
                                return NotesItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
