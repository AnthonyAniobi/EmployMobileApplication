import 'package:flutter/material.dart';

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
              Container(color: Colors.yellow),
              Container(color: Colors.green),
            ],
          ),
        ],
      ),
    );
  }

  Widget introPage(String imgUrl, String title, String message) {
    return Column(
      children: [Image.asset('assets/image/$imgUrl.png')],
    );
  }
}
