import 'package:flutter/material.dart';
import 'package:flutter_template/theme.dart';

class TextType {
  static Widget h0(
    String text, {
    EdgeInsets padding = EdgeInsets.zero,
    TextStyle? textStyle,
    String? fontFamily,
    TextOverflow? overflow,
    int? maxLines,
    TextAlign? textAlign,
    double fontSize = 48.83,
    double lineHeight = 0,
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
    double fontSize = 39.06,
    double lineHeight = 0,
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
    double fontSize = 25,
    double lineHeight = 0,
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
    double lineHeight = 0,
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
    double lineHeight = 0,
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
    double lineHeight = 0,
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
