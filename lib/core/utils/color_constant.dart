import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#fafcff');

  static Color black900B2 = fromHex('#b2000000');

  static Color blueGray50 = fromHex('#eaecf0');

  static Color blueA700 = fromHex('#0061ff');

  static Color lightBlue100 = fromHex('#b0e5fc');

  static Color blueGray10001 = fromHex('#dad6d6');

  static Color red200 = fromHex('#fa9a9a');

  static Color gray60019 = fromHex('#197e7e7e');

  static Color greenA100 = fromHex('#b5eacd');

  static Color black9003f = fromHex('#3f000000');

  static Color green600 = fromHex('#349765');

  static Color gray50 = fromHex('#f9fbff');

  static Color black90001 = fromHex('#000919');

  static Color black900 = fromHex('#000000');

  static Color blueGray800 = fromHex('#37334d');

  static Color blueGray700 = fromHex('#535763');

  static Color blue5001 = fromHex('#e0ebff');

  static Color blueGray900 = fromHex('#262b35');

  static Color black90002 = fromHex('#0b0a0a');

  static Color gray700 = fromHex('#666666');

  static Color blueGray200 = fromHex('#bac1ce');

  static Color blueGray100 = fromHex('#d6dae2');

  static Color orangeA200 = fromHex('#ef9e3b');

  static Color blueGray400 = fromHex('#74839d');

  static Color blueGray300 = fromHex('#9ea8ba');

  static Color blueGray600 = fromHex('#5f6c86');

  static Color blueGray40090 = fromHex('#9074839d');

  static Color blueGray30087 = fromHex('#87919eab');

  static Color gray200 = fromHex('#efefef');

  static Color gray300 = fromHex('#d2efe0');

  static Color blue50 = fromHex('#eef4ff');

  static Color gray100 = fromHex('#f2f2f2');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color blueGray1006c = fromHex('#6cd1d3d4');

  static Color indigo900 = fromHex('#002055');

  static Color blue200 = fromHex('#a6c8ff');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blueGray70001 = fromHex('#424c5d');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
