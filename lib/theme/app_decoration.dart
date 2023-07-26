import 'package:flutter/material.dart';
import 'package:manish_s_application2/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get gradientWhiteA700WhiteA70000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.58,
            0.57,
          ),
          end: Alignment(
            0.58,
            -0.17,
          ),
          colors: [
            ColorConstant.whiteA700,
            ColorConstant.whiteA70000,
          ],
        ),
      );
  static BoxDecoration get outlineGray60019 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray60019,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get txtFillBluegray100 => BoxDecoration(
        color: ColorConstant.blueGray100,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBlueA700 => BoxDecoration(
        color: ColorConstant.blueA700,
      );
  static BoxDecoration get fillBluegray50 => BoxDecoration(
        color: ColorConstant.blueGray50,
      );
  static BoxDecoration get outlineBlueA700 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border.all(
          color: ColorConstant.blueA700,
          width: getHorizontalSize(
            2,
          ),
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get txtOutlineBluegray100 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray1002 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border(
          top: BorderSide(
            color: ColorConstant.blueGray100,
            width: getHorizontalSize(
              1,
            ),
          ),
          bottom: BorderSide(
            color: ColorConstant.blueGray100,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get outlineBluegray1001 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.blueGray100,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: ColorConstant.blue50,
      );
  static BoxDecoration get txtOutlineBlueA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueA700,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillBluegray10001 => BoxDecoration(
        color: ColorConstant.blueGray10001,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: ColorConstant.gray5001,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );

  static BorderRadius circleBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius circleBorder75 = BorderRadius.circular(
    getHorizontalSize(
      75,
    ),
  );

  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
