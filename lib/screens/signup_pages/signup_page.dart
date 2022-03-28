import 'package:employ/constants/custom_colors.dart';
import 'package:employ/constants/custom_fonts.dart';
import 'package:employ/screens/import_resume/import_resume.dart';
import 'package:employ/screens/login/sign_in_page.dart';
import 'package:employ/widgets/custom_buttons.dart';
import 'package:employ/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login(BuildContext context) {
    Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          child: SigninPage(),
        ));
  }

  void _signup(BuildContext context) {
    Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          child: ImportResume(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColor.white,
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 50),
          Row(
            children: [
              const SizedBox(width: 10),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
            ],
          ),
          CFont.primary('Signup Page'),
          const SizedBox(height: 10),
          CFont.secondary('Create an account in few minutes',
              color: CColor.black),
          const SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: CFont.secondary('Full name', color: CColor.black),
              ),
              CField.text(
                  hint: 'John doe',
                  icon: Icons.person_outline,
                  controller: _nameController),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: CFont.secondary('Email', color: CColor.black),
              ),
              CField.text(
                  hint: 'Johndoe@email.com',
                  icon: Icons.mail_outline,
                  controller: _emailController),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: CFont.secondary('Phone Number', color: CColor.black),
              ),
              CField.text(
                  hint: '+234 012 345 6789',
                  icon: Icons.phone_outlined,
                  controller: _nameController),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: CFont.secondary('Password', color: CColor.black),
              ),
              CField.password(controller: _passwordController),
            ],
          ),
          const SizedBox(height: 50),
          CButton.primary(
              text: 'Sign up',
              onPressed: () {
                _signup(context);
              }),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CFont.small('Already have an account? ', color: CColor.black),
            const SizedBox(width: 5),
            InkWell(
                onTap: () {
                  _login(context);
                },
                child: CFont.small('Login', color: CColor.red)),
          ]),
          const SizedBox(height: 100),
        ]),
      ),
    );
  }
}
