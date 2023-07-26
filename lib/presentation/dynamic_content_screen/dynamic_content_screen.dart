import '../dynamic_content_screen/widgets/listunsplashfr2iwkpsiy_item_widget.dart';
import '../dynamic_content_screen/widgets/sliderunsplashrncpixixooy_item_widget.dart';
import 'controller/dynamic_content_controller.dart';
import 'models/listunsplashfr2iwkpsiy_item_model.dart';
import 'models/sliderunsplashrncpixixooy_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';
import 'package:manish_s_application2/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:manish_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class DynamicContentScreen extends GetWidget<DynamicContentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            78,
          ),
          title: Padding(
            padding: getPadding(
              left: 32,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 10,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_home".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroyMedium16BlueA700,
                        ),
                      ),
                      AppbarSubtitle1(
                        text: "lbl_tv_shows".tr,
                        margin: getMargin(
                          left: 47,
                          top: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: SizedBox(
                    width: getHorizontalSize(
                      171,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        2,
                      ),
                      thickness: getVerticalSize(
                        2,
                      ),
                      color: ColorConstant.blueA700,
                      endIndent: getHorizontalSize(
                        107,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarSubtitle1(
              text: "lbl_movies".tr,
              margin: getMargin(
                left: 47,
                top: 16,
                right: 20,
              ),
            ),
            AppbarSubtitle1(
              text: "lbl_kids".tr,
              margin: getMargin(
                left: 47,
                top: 16,
                right: 69,
              ),
            ),
          ],
          styleType: Style.bgOutlineBluegray100,
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 20,
                ),
                child: Obx(
                  () => CarouselSlider.builder(
                    options: CarouselOptions(
                      height: getVerticalSize(
                        153,
                      ),
                      initialPage: 0,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        controller.silderIndex.value = index;
                      },
                    ),
                    itemCount: controller.dynamicContentModelObj.value
                        .sliderunsplashrncpixixooyItemList.value.length,
                    itemBuilder: (context, index, realIndex) {
                      SliderunsplashrncpixixooyItemModel model = controller
                          .dynamicContentModelObj
                          .value
                          .sliderunsplashrncpixixooyItemList
                          .value[index];
                      return SliderunsplashrncpixixooyItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Obx(
                  () => Container(
                    height: getVerticalSize(
                      8,
                    ),
                    margin: getMargin(
                      top: 12,
                    ),
                    child: AnimatedSmoothIndicator(
                      activeIndex: controller.silderIndex.value,
                      count: controller.dynamicContentModelObj.value
                          .sliderunsplashrncpixixooyItemList.value.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 7,
                        activeDotColor: ColorConstant.blueA700,
                        dotColor: ColorConstant.blue200,
                        dotHeight: getVerticalSize(
                          8,
                        ),
                        dotWidth: getHorizontalSize(
                          8,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 29,
                ),
                child: Text(
                  "msg_based_on_your_recent".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold24,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: getPadding(
                  left: 16,
                  top: 20,
                ),
                child: IntrinsicWidth(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          136,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.blueGray10001,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  123,
                                ),
                                width: getHorizontalSize(
                                  136,
                                ),
                                padding: getPadding(
                                  left: 26,
                                  top: 23,
                                  right: 26,
                                  bottom: 23,
                                ),
                                decoration:
                                    AppDecoration.fillBluegray10001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: Stack(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgUnsplashhgo1wfpxl3i76x84,
                                      height: getVerticalSize(
                                        76,
                                      ),
                                      width: getHorizontalSize(
                                        84,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 16,
                              ),
                              child: Text(
                                "lbl_on_repeat".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16Bluegray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          136,
                        ),
                        margin: getMargin(
                          left: 16,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.blueGray10001,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  123,
                                ),
                                width: getHorizontalSize(
                                  136,
                                ),
                                padding: getPadding(
                                  left: 26,
                                  top: 23,
                                  right: 26,
                                  bottom: 23,
                                ),
                                decoration:
                                    AppDecoration.fillBluegray10001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: Stack(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgUnsplashta7rn3ncwym76x84,
                                      height: getVerticalSize(
                                        76,
                                      ),
                                      width: getHorizontalSize(
                                        84,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 17,
                              ),
                              child: Text(
                                "lbl_unstoppable".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16Bluegray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          136,
                        ),
                        margin: getMargin(
                          left: 16,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.blueGray10001,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  123,
                                ),
                                width: getHorizontalSize(
                                  136,
                                ),
                                padding: getPadding(
                                  left: 26,
                                  top: 23,
                                  right: 26,
                                  bottom: 23,
                                ),
                                decoration:
                                    AppDecoration.fillBluegray10001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: Stack(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgUnsplashl35ddpd3gys76x84,
                                      height: getVerticalSize(
                                        76,
                                      ),
                                      width: getHorizontalSize(
                                        84,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 16,
                              ),
                              child: Text(
                                "lbl_senorita".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16Bluegray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 35,
                ),
                child: Text(
                  "lbl_library".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold24,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 18,
                  right: 150,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          16,
                        ),
                      );
                    },
                    itemCount: controller.dynamicContentModelObj.value
                        .listunsplashfr2iwkpsiyItemList.value.length,
                    itemBuilder: (context, index) {
                      Listunsplashfr2iwkpsiyItemModel model = controller
                          .dynamicContentModelObj
                          .value
                          .listunsplashfr2iwkpsiyItemList
                          .value[index];
                      return Listunsplashfr2iwkpsiyItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
