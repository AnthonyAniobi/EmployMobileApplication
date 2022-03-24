import 'package:employ/constants/custom_colors.dart';
import 'package:employ/constants/custom_fonts.dart';
import 'package:employ/constants/custom_icons.dart';
import 'package:employ/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  void _goBack() {
    // Navigator.pop(context);
  }

  void _verifyEmail() {}

  void _googleSignin() {}
  void _facebookSignin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColor.white,
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              IconButton(
                  onPressed: _goBack,
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: CColor.black,
                  ))
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              CFont.primary('Ready to get started?'),
              const SizedBox(height: 10),
              CFont.small('Create an account or sign in', color: CColor.black),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              CButton.secondaryIcon(
                  text: 'Continue with Google',
                  icon: CIcon.google,
                  onPressed: _googleSignin),
              const SizedBox(height: 50),
              CButton.secondaryIcon(
                  text: 'Continue with Facebook',
                  icon: CIcon.facebook,
                  onPressed: _facebookSignin),
            ],
          ),
          const SizedBox(height: 50),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 2,
              color: CColor.black,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CFont.secondary('or', color: CColor.black),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 2,
              color: CColor.black,
            ),
          ]),
          CButton.primary(text: 'Get started', onPressed: _verifyEmail),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
