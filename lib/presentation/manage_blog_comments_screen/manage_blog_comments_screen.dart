import '../manage_blog_comments_screen/widgets/listprofileimglarge_item_widget.dart';
import 'controller/manage_blog_comments_controller.dart';
import 'models/listprofileimglarge_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:manish_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:manish_s_application2/widgets/custom_button.dart';
import 'package:manish_s_application2/widgets/custom_switch.dart';
import 'package:manish_s_application2/widgets/custom_text_form_field.dart';

class ManageBlogCommentsScreen extends GetWidget<ManageBlogCommentsController> {
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
                      onTapArrowleft8();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_manage_blog_comments".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 18, right: 16, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: getPadding(top: 3),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(258),
                                          child: Text(
                                              "msg_battlegrounds_mobile".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold18Bluegray900)),
                                      Container(
                                          width: getHorizontalSize(256),
                                          margin: getMargin(top: 11),
                                          child: Text(
                                              "msg_the_reason_behind".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyRegular14Bluegray400))
                                    ])),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle19101x118,
                                height: getVerticalSize(101),
                                width: getHorizontalSize(118),
                                radius:
                                    BorderRadius.circular(getHorizontalSize(4)),
                                margin: getMargin(bottom: 3))
                          ]),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_15_mins_ago".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyRegular14Bluegray400),
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroup9848,
                                    height: getVerticalSize(13),
                                    width: getHorizontalSize(10),
                                    margin: getMargin(bottom: 3))
                              ])),
                      Padding(
                          padding: getPadding(top: 24, right: 5),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        getPadding(top: 16.5, bottom: 16.5),
                                    child: SizedBox(
                                        width: getHorizontalSize(396),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blueGray100)));
                              },
                              itemCount: controller
                                  .manageBlogCommentsModelObj
                                  .value
                                  .listprofileimglargeItemList
                                  .value
                                  .length,
                              itemBuilder: (context, index) {
                                ListprofileimglargeItemModel model = controller
                                    .manageBlogCommentsModelObj
                                    .value
                                    .listprofileimglargeItemList
                                    .value[index];
                                return ListprofileimglargeItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group9887Controller,
                          hintText: "msg_comment_settings".tr,
                          margin: getMargin(top: 24),
                          variant: TextFormFieldVariant.FillBlue5001,
                          padding: TextFormFieldPadding.PaddingAll8,
                          fontStyle:
                              TextFormFieldFontStyle.GilroyMedium16BlueA700,
                          textInputAction: TextInputAction.done),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1, bottom: 1),
                                    child: Text("lbl_allow_comments".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                Obx(() => CustomSwitch(
                                    value: controller.isSelectedSwitch.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch.value = value;
                                    }))
                              ])),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("msg_turn_off_spam_comments".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                Obx(() => CustomSwitch(
                                    value: controller.isSelectedSwitch1.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch1.value =
                                          value;
                                    }))
                              ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1, bottom: 1),
                                    child: Text("msg_comment_notifications".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                Obx(() => CustomSwitch(
                                    value: controller.isSelectedSwitch2.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch2.value =
                                          value;
                                    }))
                              ])),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_save_changes".tr,
                          margin: getMargin(top: 96, bottom: 5))
                    ]))));
  }

  onTapArrowleft8() {
    Get.back();
  }
}
