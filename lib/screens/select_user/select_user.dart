import 'package:employ/constants/custom_colors.dart';
import 'package:employ/constants/custom_fonts.dart';
import 'package:employ/models/user.dart';
import 'package:employ/screens/employer/employer_home.dart';
import 'package:employ/screens/select_user/widgets/users_button.dart';
import 'package:employ/screens/login/sign_in_page.dart';
import 'package:employ/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SelectUser extends StatefulWidget {
  const SelectUser({Key? key}) : super(key: key);

  @override
  State<SelectUser> createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  UserType? _userType;
  final int _duration = 300;

  void _nextPage() {
    if (_userType != null) {
      Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child:
                _userType == UserType.employer ? EmployerHome() : SigninPage(),
          ));
    }
  }

  void _selectUserType(UserType userType) {
    setState(() {
      _userType = userType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColor.white,
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(-3, -0.5),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 50, color: CColor.red)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  userSelectionButton(
                    type: UserType.employee,
                    selected: _userType,
                    function: _selectUserType,
                  ),
                  const SizedBox(height: 20),
                  userSelectionButton(
                    type: UserType.employer,
                    selected: _userType,
                    function: _selectUserType,
                  ),
                ],
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: _duration),
                height: _userType == null ? 0 : 60,
                child: CButton.primary(text: 'Continue', onPressed: _nextPage),
              )
            ],
          )
        ],
      ),
    );
  }
}
