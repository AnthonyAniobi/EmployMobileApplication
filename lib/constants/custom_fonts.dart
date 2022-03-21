import 'package:employ/constants/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CFont {
  static Widget primary(
    String text, {
    Color color = CColor.grey,
    int maxLines = 5,
    TextAlign align = TextAlign.center,
  }) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: align,
      style: TextStyle(
        fontSize: 22,
        fontFamily: 'Lato',
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }

  static Widget secondary(
    String text, {
    Color color = CColor.grey,
    int maxLines = 5,
    TextAlign align = TextAlign.center,
  }) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: align,
      style: TextStyle(
        fontSize: 18,
        fontFamily: 'Lato',
        color: color,
      ),
    );
  }

  static Widget small(
    String text, {
    Color color = CColor.grey,
    int maxLines = 5,
    TextAlign align = TextAlign.center,
  }) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: align,
      style: TextStyle(
        fontSize: 13,
        fontFamily: 'Lato',
        color: color,
      ),
    );
  }
}
