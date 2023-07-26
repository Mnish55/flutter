import 'controller/document_opener_controller.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:manish_s_application2/widgets/app_bar/custom_app_bar.dart';

class DocumentOpenerScreen extends GetWidget<DocumentOpenerController> {
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
                      onTapArrowleft5();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_document_opener".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("msg_rashed_othman_salem".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroySemiBold20Bluegray900),
                                  Padding(
                                      padding: getPadding(top: 12),
                                      child: Text("msg_webflow_developer".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium14Bluegray400))
                                ]),
                            Padding(
                                padding: getPadding(bottom: 34),
                                child: Text("lbl_dubai_u_a_e".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyRegular16Bluegray400))
                          ]),
                      Container(
                          width: getHorizontalSize(396),
                          margin: getMargin(top: 27),
                          child: Text("msg_as_a_candidate_for".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyRegular14Bluegray400)),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Text("lbl_michele_d".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold20Bluegray900)),
                      Padding(
                          padding: getPadding(top: 13, bottom: 5),
                          child: Text("msg_director_of_say".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium14Bluegray400))
                    ]))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
