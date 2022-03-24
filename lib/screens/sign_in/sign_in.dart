import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  void _goBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: _goBack, icon: const Icon(Icons.arrow_back_ios))
            ],
          )
        ],
      ),
    );
  }
}
