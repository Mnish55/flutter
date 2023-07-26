import '../blog_posts_management_screen/widgets/listblogsuploaded_item_widget.dart';
import 'controller/blog_posts_management_controller.dart';
import 'models/listblogsuploaded_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:manish_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:manish_s_application2/widgets/custom_button.dart';
import 'package:manish_s_application2/widgets/custom_icon_button.dart';

class BlogPostsManagementScreen
    extends GetWidget<BlogPostsManagementController> {
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
                      onTapArrowleft2();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_blog_posts_management".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 16, top: 12, right: 16, bottom: 17))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 20, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(105),
                              child: Obx(() => ListView.separated(
                                  padding: getPadding(left: 15),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16));
                                  },
                                  itemCount: controller
                                      .blogPostsManagementModelObj
                                      .value
                                      .listblogsuploadedItemList
                                      .value
                                      .length,
                                  itemBuilder: (context, index) {
                                    ListblogsuploadedItemModel model =
                                        controller
                                            .blogPostsManagementModelObj
                                            .value
                                            .listblogsuploadedItemList
                                            .value[index];
                                    return ListblogsuploadedItemWidget(model);
                                  })))),
                      Container(
                          height: getVerticalSize(50),
                          width: getHorizontalSize(396),
                          margin: getMargin(top: 24),
                          decoration: AppDecoration.fillGray100,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    margin: getMargin(bottom: 25),
                                    padding: getPadding(all: 7),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgTicket,
                                              height: getSize(10),
                                              width: getSize(10)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgInfo,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 10)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgIconsformatting,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 10)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgIconsformattingBlack900,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 10)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgSort,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 21)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgSort,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 10)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgMenu,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 10)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVolume,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 10)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgLink,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 21)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgMail,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 10)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgUser,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 10)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgPlus,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 10)),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgReply,
                                              height: getSize(10),
                                              width: getSize(10)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgReply,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 10)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgOverflowmenu10x10,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(left: 10))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomIconButton(
                                          height: 21,
                                          width: 21,
                                          margin: getMargin(left: 65),
                                          variant:
                                              IconButtonVariant.FillGray100,
                                          shape:
                                              IconButtonShape.CustomBorderTL3,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgIconsformattingBlack900)),
                                      Container(
                                          padding: getPadding(all: 7),
                                          decoration: AppDecoration.fillGray100,
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgLock,
                                                height: getSize(10),
                                                width: getSize(10)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(10),
                                                width: getSize(10),
                                                margin: getMargin(left: 10)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(10),
                                                width: getSize(10),
                                                margin: getMargin(left: 10)),
                                            Container(
                                                width: getHorizontalSize(14),
                                                margin: getMargin(left: 10),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIconsformattingBlack90010x10,
                                                      height: getSize(10),
                                                      width: getSize(10)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIconsmiscparts,
                                                      height:
                                                          getVerticalSize(2),
                                                      width:
                                                          getHorizontalSize(3),
                                                      margin: getMargin(
                                                          top: 4, bottom: 4))
                                                ])),
                                            Container(
                                                width: getHorizontalSize(14),
                                                margin: getMargin(left: 10),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgMap,
                                                      height: getSize(10),
                                                      width: getSize(10)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIconsmiscparts,
                                                      height:
                                                          getVerticalSize(2),
                                                      width:
                                                          getHorizontalSize(3),
                                                      margin: getMargin(
                                                          top: 4, bottom: 4))
                                                ])),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgEdit,
                                                height: getSize(10),
                                                width: getSize(10),
                                                margin: getMargin(left: 10)),
                                            Container(
                                                width: getHorizontalSize(14),
                                                margin: getMargin(left: 10),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIconsformatting10x10,
                                                      height: getSize(10),
                                                      width: getSize(10)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIconsmiscparts,
                                                      height:
                                                          getVerticalSize(2),
                                                      width:
                                                          getHorizontalSize(3),
                                                      margin: getMargin(
                                                          top: 4, bottom: 4))
                                                ])),
                                            Container(
                                                width: getHorizontalSize(14),
                                                margin: getMargin(left: 10),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIconsformatting1,
                                                      height: getSize(10),
                                                      width: getSize(10)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIconsmiscparts,
                                                      height:
                                                          getVerticalSize(2),
                                                      width:
                                                          getHorizontalSize(3),
                                                      margin: getMargin(
                                                          top: 4, bottom: 4))
                                                ])),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLocation,
                                                height: getSize(10),
                                                width: getSize(10),
                                                margin: getMargin(left: 10))
                                          ]))
                                    ]))
                          ])),
                      Container(
                          height: getVerticalSize(305),
                          width: getHorizontalSize(396),
                          margin: getMargin(top: 24, bottom: 5),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle19101x118,
                                height: getVerticalSize(101),
                                width: getHorizontalSize(118),
                                radius:
                                    BorderRadius.circular(getHorizontalSize(4)),
                                alignment: Alignment.topRight),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    width: getHorizontalSize(258),
                                    margin: getMargin(top: 3),
                                    child: Text("msg_battlegrounds_mobile".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    width: getHorizontalSize(389),
                                    child: Text("msg_krafton_has_been".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium14Bluegray40090)))
                          ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(50),
                text: "lbl_save_changes".tr,
                margin: getMargin(left: 16, right: 16, bottom: 62))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
