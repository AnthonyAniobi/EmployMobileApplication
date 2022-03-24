import 'package:employ/constants/custom_colors.dart';
import 'package:employ/constants/custom_fonts.dart';
import 'package:flutter/material.dart';

class PasswordEntryPage extends StatelessWidget {
  const PasswordEntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColor.white,
      body: Column(
        children: [
          const SizedBox(height: 50),
          CFont.primary('Password Entry'),
        ],
      ),
    );
  }
}
