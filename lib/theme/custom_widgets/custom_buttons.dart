import 'package:employ/constants/custom_colors.dart';
import 'package:employ/constants/custom_fonts.dart';
import 'package:flutter/material.dart';

class CButton {
  static Widget primary({required String text, required Function onPressed}) {
    return GestureDetector(
      onTap: () {
        // print();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(7)),
        child: CFont.primary('Next', color: CColor.white),
      ),
    );
  }
}
