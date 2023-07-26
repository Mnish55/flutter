import '../reviews_screen/widgets/listgroup9779_item_widget.dart';
import '../reviews_screen/widgets/liststarcounter_item_widget.dart';
import 'controller/reviews_controller.dart';
import 'models/listgroup9779_item_model.dart';
import 'models/liststarcounter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/custom_button.dart';

class ReviewsScreen extends GetWidget<ReviewsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 8, right: 16, bottom: 8),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(24),
                          width: getSize(24),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(top: 5),
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      CustomImageView(
                          svgPath: ImageConstant.imgFrame9844,
                          height: getVerticalSize(32),
                          width: getHorizontalSize(224),
                          margin: getMargin(top: 37)),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_4_0_out_of_5".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyMedium14Black900),
                                Padding(
                                    padding: getPadding(left: 65),
                                    child: Text("lbl_1_472_reviews".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtGilroyMedium14Black900))
                              ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(8));
                              },
                              itemCount: controller.reviewsModelObj.value
                                  .liststarcounterItemList.value.length,
                              itemBuilder: (context, index) {
                                ListstarcounterItemModel model = controller
                                    .reviewsModelObj
                                    .value
                                    .liststarcounterItemList
                                    .value[index];
                                return ListstarcounterItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(8));
                              },
                              itemCount: controller.reviewsModelObj.value
                                  .listgroup9779ItemList.value.length,
                              itemBuilder: (context, index) {
                                Listgroup9779ItemModel model = controller
                                    .reviewsModelObj
                                    .value
                                    .listgroup9779ItemList
                                    .value[index];
                                return Listgroup9779ItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3, bottom: 3),
                                    child: Text("lbl_1_star".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyRegular16)),
                                Expanded(
                                    child: Container(
                                        margin: getMargin(left: 19),
                                        decoration: AppDecoration.fillBluegray50
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder6),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(26),
                                                  width: getHorizontalSize(18),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .orangeA200,
                                                      borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(
                                                              getHorizontalSize(
                                                                  6)),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  getHorizontalSize(
                                                                      6)))))
                                            ]))),
                                Padding(
                                    padding:
                                        getPadding(left: 28, top: 2, bottom: 4),
                                    child: Text("lbl_5".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyRegular16))
                              ])),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Text("lbl_top_reviews".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Black900)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 6),
                                    child: Text("lbl_filter".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium14BlueA700)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgComputer,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 4, bottom: 3))
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse350x50,
                                    height: getSize(50),
                                    width: getSize(50),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(25)),
                                    margin: getMargin(bottom: 1)),
                                Container(
                                    width: getHorizontalSize(122),
                                    margin:
                                        getMargin(left: 16, top: 5, bottom: 3),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_angelyn_weiner".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroySemiBold16),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 6),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFrame9844OrangeA200,
                                                            height:
                                                                getVerticalSize(
                                                                    16),
                                                            width:
                                                                getHorizontalSize(
                                                                    96)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8,
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_4_0".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtGilroySemiBold12))
                                                      ])))
                                        ])),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 36),
                                    child: Text("lbl_1_day_ago".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold12Bluegray400))
                              ])),
                      Container(
                          width: getHorizontalSize(387),
                          margin: getMargin(top: 16, right: 8),
                          child: Text("msg_lorem_ipsum_dolor2".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyRegular14)),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse350x50,
                                    height: getSize(50),
                                    width: getSize(50),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(25)),
                                    margin: getMargin(bottom: 1)),
                                Container(
                                    width: getHorizontalSize(122),
                                    margin:
                                        getMargin(left: 16, top: 5, bottom: 3),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_angelyn_weiner".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroySemiBold16),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 6),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFrame9844OrangeA200,
                                                            height:
                                                                getVerticalSize(
                                                                    16),
                                                            width:
                                                                getHorizontalSize(
                                                                    96)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8,
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_4_0".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtGilroySemiBold12))
                                                      ])))
                                        ])),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 36),
                                    child: Text("lbl_1_day_ago".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold12Bluegray400))
                              ])),
                      Container(
                          width: getHorizontalSize(387),
                          margin: getMargin(top: 16, right: 8),
                          child: Text("msg_lorem_ipsum_dolor2".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyRegular14)),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse350x50,
                                    height: getSize(50),
                                    width: getSize(50),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(25)),
                                    margin: getMargin(bottom: 1)),
                                Container(
                                    width: getHorizontalSize(122),
                                    margin:
                                        getMargin(left: 16, top: 5, bottom: 3),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_angelyn_weiner".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroySemiBold16),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(top: 6),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFrame9844OrangeA200,
                                                            height:
                                                                getVerticalSize(
                                                                    16),
                                                            width:
                                                                getHorizontalSize(
                                                                    96)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8,
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_4_0".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtGilroySemiBold12))
                                                      ])))
                                        ])),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 36),
                                    child: Text("lbl_1_day_ago".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold12Bluegray400))
                              ])),
                      Container(
                          height: getVerticalSize(63),
                          width: getHorizontalSize(396),
                          margin: getMargin(top: 16),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: getHorizontalSize(387),
                                    child: Text("msg_lorem_ipsum_dolor2".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyRegular14))),
                            CustomButton(
                                height: getVerticalSize(50),
                                width: getHorizontalSize(396),
                                text: "lbl_write_a_review".tr,
                                alignment: Alignment.topCenter)
                          ])),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
