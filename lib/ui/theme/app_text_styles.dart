import 'package:flutter/material.dart';
import 'package:instagram_clone/app/extensions/screen_util_extension.dart';
import 'package:instagram_clone/ui/theme/palette.dart';

enum FontType { BOLD, SEMIBOLD, MEDIUM, REGULAR, LIGHT }

class AppTextStyles {
  static FontWeight fontType(FontType fontType) {
    switch (fontType) {
      case FontType.BOLD:
        return FontWeight.w700;
        break;
      case FontType.SEMIBOLD:
        return FontWeight.w600;
        break;
      case FontType.MEDIUM:
        return FontWeight.w500;
        break;
      case FontType.REGULAR:
        return FontWeight.w400;
        break;
      case FontType.LIGHT:
        return FontWeight.w300;
        break;
      default:
        return FontWeight.w400;
        break;
    }
  }

  static TextStyle textStyle(
      {FontType fontType = FontType.REGULAR,
      Color color = Palette.primaryTextColor,
      double size = 14.0,
      String fontFamily: ''}) {
    return TextStyle(
        color: color,
        fontSize: size.f,
        fontWeight: AppTextStyles.fontType(fontType),
        fontFamily: fontFamily);
  }

  static TextStyle splashTextStyle() => AppTextStyles.textStyle(
      size: 50.0.f,
      color: Palette.primaryTextColor,
      fontType: FontType.BOLD,
      fontFamily: 'GrandHotel');

  static TextStyle headerTextStyle() => AppTextStyles.textStyle(
        size: 18.0.f,
        color: Palette.primaryTextColor,
        fontType: FontType.BOLD,
      );

  static TextStyle secondaryTextStyle1() => AppTextStyles.textStyle(
        size: 14.0.f,
        color: Palette.secondaryTextColor,
        fontType: FontType.REGULAR,
      );

  static TextStyle secondaryTextStyle2() => AppTextStyles.textStyle(
        size: 12.0.f,
        color: Palette.secondaryTextColor,
        fontType: FontType.REGULAR,
      );

  static TextStyle primaryButtonStyle() => AppTextStyles.textStyle(
        size: 16.0.f,
        color: Colors.white,
        fontType: FontType.MEDIUM,
      );
}
