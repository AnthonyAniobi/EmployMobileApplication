import 'package:employ/constants/custom_fonts.dart';
import 'package:employ/theme/custom_widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              introPage('collaborate', 'Hire Top Talents',
                  'Sign up to disconnect and hire for your next project'),
              introPage('get_in_touch', 'Getting Started is Super Easy',
                  'Instantly build your profile, learn and apply for your next job remotely'),
              introPage('back_to_back', 'Personalized just for you',
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
                  text: 'Next',
                  onPressed: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease);
                  })),
        ],
      ),
    );
  }

  Widget introPage(String imgUrl, String title, String message) {
    return Column(
      children: [
        const Spacer(flex: 2),
        Image.asset('assets/image/$imgUrl.png'),
        CFont.primary(title),
        CFont.small(message),
        const Spacer(flex: 3),
      ],
    );
  }
}
