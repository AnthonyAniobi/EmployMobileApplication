import 'package:employ/constants/custom_fonts.dart';
import 'package:employ/constants/custom_images.dart';
import 'package:employ/screens/select_user/select_user.dart';
import 'package:employ/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:page_transition/page_transition.dart';

class SelectUserType extends StatefulWidget {
  const SelectUserType({Key? key}) : super(key: key);

  @override
  _SelectUserTypeState createState() => _SelectUserTypeState();
}

class _SelectUserTypeState extends State<SelectUserType> {
  final PageController _controller = PageController();
  String _buttonText = 'Next';
  int _pageIndex = 0;

  void _buttonClick() {
    if (_pageIndex == 2) {
      _nextPage();
      return;
    }
    _controller.animateToPage(_pageIndex + 1,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut);
  }

  void _nextPage() {
    Navigator.pushReplacement(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          child: SelectUser(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              _pageIndex = index;
              if (index == 2) {
                setState(() {
                  _buttonText = 'Let\'s go';
                });
              } else {
                setState(() {
                  _buttonText = 'Next';
                });
              }
            },
            children: [
              introPage(CImg.collaborate, 'Hire Top Talents',
                  'Sign up to disconnect and hire for your next project'),
              introPage(CImg.intouch, 'Getting Started is Super Easy',
                  'Instantly build your profile, learn and apply for your next job remotely'),
              introPage(CImg.backed, 'Personalized just for you',
                  'We believe the world is much beautiful as each person gets better')
            ],
          ),
          Align(
            alignment: const Alignment(0, 0.5),
            child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const WormEffect(
                  strokeWidth: 2.0,
                  activeDotColor: Colors.black,
                )),
          ),
          Align(
              alignment: const Alignment(0, 0.75),
              child: CButton.primary(
                  text: _buttonText,
                  onPressed: () {
                    _buttonClick();
                  })),
        ],
      ),
    );
  }

  Widget introPage(String imgUrl, String title, String message) {
    return Column(
      children: [
        const Spacer(flex: 2),
        Image.asset(imgUrl),
        CFont.primary(title),
        CFont.small(message),
        const Spacer(flex: 3),
      ],
    );
  }
}
