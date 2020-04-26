import 'package:flutter/material.dart';
import 'package:my_chatting/screens/register_screen.dart';

import 'package:my_chatting/widgets/style_button.dart';

class WelcomeScreen extends StatelessWidget {
  static const route = 'WelcomeScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Hero(
            tag: 'love_logo',
            child: CircleAvatar(
              child: Image.asset(
                'assets/images/love_logo.jpg',
              ),
              radius: 200,
            ),
          ),
          StyledButton(
            text: 'Register',
            color: Color(0xff77228a),
            onPressed: () {
              Navigator.pushNamed(context, RegisterScreen.route);
            },
          ),
          SizedBox(
            height: 15.0,
          ),
          StyledButton(
            text: 'Login',
            onPressed: () {},
            color: Color(0xffe44393),
          ),
        ],
      ),
    );
  }
}
