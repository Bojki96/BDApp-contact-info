import 'package:bd_app_contact_info/theme.dart';
import 'package:flutter/material.dart';

class TextType {
  static Widget h0(
    String text, {
    EdgeInsets padding = EdgeInsets.zero,
    TextStyle? textStyle,
    String? fontFamily,
    TextOverflow? overflow,
    int? maxLines,
    TextAlign? textAlign,
    double fontSize = 32,
    double lineHeight = 1.2,
    FontWeight fontWeight = FontWeight.w900,
    Color color = ThemeColors.darkGray,
    double letterSpacing = -0.3,
  }) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
          fontFamily: fontFamily,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: FontStyle.normal,
          height: lineHeight,
          overflow: overflow,
          letterSpacing: letterSpacing,
        ).merge(
          textStyle,
        ),
      ),
    );
  }

  static Widget h1(
    String text, {
    EdgeInsets padding = EdgeInsets.zero,
    TextStyle? textStyle,
    String? fontFamily,
    TextOverflow? overflow,
    int? maxLines,
    TextAlign? textAlign,
    double fontSize = 28,
    double lineHeight = 1.2,
    FontWeight fontWeight = FontWeight.w900,
    Color color = ThemeColors.darkGray,
    double letterSpacing = -0.3,
  }) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
          fontFamily: fontFamily,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: FontStyle.normal,
          height: lineHeight,
          overflow: overflow,
          letterSpacing: letterSpacing,
        ).merge(
          textStyle,
        ),
      ),
    );
  }

  static Widget h2(
    String text, {
    EdgeInsets padding = EdgeInsets.zero,
    TextStyle? textStyle,
    String? fontFamily,
    TextOverflow? overflow,
    int? maxLines,
    TextAlign? textAlign,
    double fontSize = 24,
    double lineHeight = 1.2,
    FontWeight fontWeight = FontWeight.w700,
    Color color = ThemeColors.darkGray,
    double letterSpacing = -0.3,
  }) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
          fontFamily: fontFamily,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: FontStyle.normal,
          height: lineHeight,
          overflow: overflow,
          letterSpacing: letterSpacing,
        ).merge(
          textStyle,
        ),
      ),
    );
  }

  static Widget h3(
    String text, {
    EdgeInsets padding = EdgeInsets.zero,
    TextStyle? textStyle,
    String? fontFamily,
    TextOverflow? overflow,
    int? maxLines,
    TextAlign? textAlign,
    double fontSize = 20,
    double lineHeight = 1.2,
    FontWeight fontWeight = FontWeight.w700,
    Color color = ThemeColors.darkGray,
    double letterSpacing = -0.3,
  }) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
          fontFamily: fontFamily,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: FontStyle.normal,
          height: lineHeight,
          overflow: overflow,
          letterSpacing: letterSpacing,
        ).merge(
          textStyle,
        ),
      ),
    );
  }

  static Widget p1(
    String text, {
    EdgeInsets padding = EdgeInsets.zero,
    TextStyle? textStyle,
    String? fontFamily,
    TextOverflow? overflow,
    int? maxLines,
    TextAlign? textAlign,
    double fontSize = 16,
    double lineHeight = 1.2,
    FontWeight fontWeight = FontWeight.w400,
    Color color = ThemeColors.darkGray,
    double letterSpacing = -0.3,
  }) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
          fontFamily: fontFamily,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: FontStyle.normal,
          height: lineHeight,
          overflow: overflow,
          letterSpacing: letterSpacing,
        ).merge(
          textStyle,
        ),
      ),
    );
  }

  static Widget p2(
    String text, {
    EdgeInsets padding = EdgeInsets.zero,
    TextStyle? textStyle,
    String? fontFamily,
    TextOverflow? overflow,
    int? maxLines,
    TextAlign? textAlign,
    double fontSize = 12.8,
    double lineHeight = 1.2,
    FontWeight fontWeight = FontWeight.w400,
    Color color = ThemeColors.darkGray,
    double letterSpacing = -0.3,
  }) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
          fontFamily: fontFamily,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: FontStyle.normal,
          height: lineHeight,
          overflow: overflow,
          letterSpacing: letterSpacing,
        ).merge(
          textStyle,
        ),
      ),
    );
  }
}
