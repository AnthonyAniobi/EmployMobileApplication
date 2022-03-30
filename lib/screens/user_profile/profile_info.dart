import 'package:employ/constants/custom_colors.dart';
import 'package:employ/constants/custom_fonts.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  void _goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColor.white,
      body: Column(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      _goBack(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                CFont.primary('Profile'),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.settings_outlined)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(width: double.maxFinite, height: 2, color: CColor.grey),
        ],
      ),
    );
  }
}
