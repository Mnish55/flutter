import 'controller/blog_importing_controller.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:manish_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:manish_s_application2/widgets/custom_button.dart';

class BlogImportingScreen extends GetWidget<BlogImportingController> {
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
                      onTapArrowleft1();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_blog_importing".tr),
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
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(left: 2, right: 2),
                              padding: getPadding(
                                  left: 120, top: 15, right: 120, bottom: 15),
                              decoration: AppDecoration.outlineBlueA700
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgDownload,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(top: 17),
                                        child: Text("msg_import_blogs_from".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtGilroyMedium18)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgWordpresslogo1,
                                        height: getSize(69),
                                        width: getSize(69),
                                        margin: getMargin(top: 13))
                                  ]))),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_import".tr,
                          margin: getMargin(bottom: 59))
                    ]))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
