import '../pagination_screen/widgets/pagination_item_widget.dart';
import 'controller/pagination_controller.dart';
import 'models/pagination_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:manish_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:manish_s_application2/widgets/custom_icon_button.dart';
import 'package:manish_s_application2/widgets/custom_search_view.dart';

class PaginationScreen extends GetWidget<PaginationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                      onTapArrowleft12();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_blogs".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 18))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 13, bottom: 13),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: controller.inputFieldController,
                          hintText: "lbl_search".tr,
                          margin: getMargin(left: 16, top: 5, right: 16),
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
                      Container(
                          height: getVerticalSize(724),
                          width: double.maxFinite,
                          margin: getMargin(top: 24),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, right: 16, bottom: 8),
                                        child: Obx(() => ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return Padding(
                                                  padding: getPadding(
                                                      top: 15.5, bottom: 15.5),
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          396),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .blueGray100)));
                                            },
                                            itemCount: controller
                                                .paginationModelObj
                                                .value
                                                .paginationItemList
                                                .value
                                                .length,
                                            itemBuilder: (context, index) {
                                              PaginationItemModel model =
                                                  controller
                                                      .paginationModelObj
                                                      .value
                                                      .paginationItemList
                                                      .value[index];
                                              return PaginationItemWidget(
                                                  model);
                                            })))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        width: double.maxFinite,
                                        margin: getMargin(top: 556),
                                        padding: getPadding(
                                            left: 78,
                                            top: 33,
                                            right: 78,
                                            bottom: 33),
                                        decoration: AppDecoration
                                            .gradientWhiteA700WhiteA70000,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              CustomIconButton(
                                                  height: 32,
                                                  width: 32,
                                                  margin: getMargin(top: 70),
                                                  variant: IconButtonVariant
                                                      .FillBluegray30087,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleftBlueGray10002)),
                                              Container(
                                                  width: getSize(32),
                                                  margin: getMargin(top: 70),
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 6,
                                                      right: 12,
                                                      bottom: 6),
                                                  decoration: AppDecoration
                                                      .txtOutlineBlueA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder5),
                                                  child: Text("lbl_13".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProTextBold14)),
                                              Container(
                                                  width: getSize(32),
                                                  margin: getMargin(top: 70),
                                                  padding: getPadding(
                                                      left: 11,
                                                      top: 6,
                                                      right: 11,
                                                      bottom: 6),
                                                  decoration: AppDecoration
                                                      .txtOutlineBluegray100
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder5),
                                                  child: Text("lbl_2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProTextBold14Bluegray400)),
                                              Container(
                                                  width: getSize(32),
                                                  margin: getMargin(top: 70),
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 4,
                                                      right: 9,
                                                      bottom: 4),
                                                  decoration: AppDecoration
                                                      .txtOutlineBluegray100
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder5),
                                                  child: Text("lbl".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProTextBold14Bluegray400)),
                                              Container(
                                                  width: getSize(32),
                                                  margin: getMargin(top: 70),
                                                  padding: getPadding(
                                                      left: 11,
                                                      top: 6,
                                                      right: 11,
                                                      bottom: 6),
                                                  decoration: AppDecoration
                                                      .txtOutlineBluegray100
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder5),
                                                  child: Text("lbl_9".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProTextBold14Bluegray400)),
                                              Container(
                                                  width: getSize(32),
                                                  margin: getMargin(top: 70),
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 6,
                                                      right: 7,
                                                      bottom: 6),
                                                  decoration: AppDecoration
                                                      .txtOutlineBluegray100
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder5),
                                                  child: Text("lbl_10".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProTextBold14Bluegray400)),
                                              CustomIconButton(
                                                  height: 32,
                                                  width: 32,
                                                  margin: getMargin(top: 70),
                                                  variant: IconButtonVariant
                                                      .OutlineBluegray100,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray4001))
                                            ])))
                              ]))
                    ]))));
  }

  onTapArrowleft12() {
    Get.back();
  }
}
