import 'package:employ/constants/custom_fonts.dart';
import 'package:employ/constants/custom_images.dart';
import 'package:employ/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

class ImportResume extends StatelessWidget {
  const ImportResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
            ],
          ),
          Image.asset(CImg.announce),
          CFont.secondary('Finish your profile to personalize your search'),
          CButton.primary(text: 'Import Resume', onPressed: () {}),
          CButton.primary(text: 'Fill in manually', onPressed: () {}),
        ],
      ),
    );
  }
}
