import '../save_as_pdf_screen/widgets/saveaspdf_item_widget.dart';
import 'controller/save_as_pdf_controller.dart';
import 'models/saveaspdf_item_model.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:manish_s_application2/widgets/app_bar/custom_app_bar.dart';

class SaveAsPdfScreen extends GetWidget<SaveAsPdfController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                      onTapArrowleft17();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_documents".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 25, right: 16, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_files".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroySemiBold18Bluegray900),
                      Padding(
                          padding: getPadding(top: 19, right: 225),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        getPadding(top: 17.0, bottom: 17.0),
                                    child: SizedBox(
                                        width: getHorizontalSize(396),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blueGray100)));
                              },
                              itemCount: controller.saveAsPdfModelObj.value
                                  .saveaspdfItemList.value.length,
                              itemBuilder: (context, index) {
                                SaveaspdfItemModel model = controller
                                    .saveAsPdfModelObj
                                    .value
                                    .saveaspdfItemList
                                    .value[index];
                                return SaveaspdfItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft17() {
    Get.back();
  }
}
