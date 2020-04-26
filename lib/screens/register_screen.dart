import 'package:flutter/material.dart';
import 'package:my_chatting/constants.dart';
import 'package:my_chatting/widgets/style_button.dart';

class RegisterScreen extends StatelessWidget {
  static const route = 'RegisterScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'love_logo',
                  child: CircleAvatar(
                    child: Image.asset(
                      'assets/images/love_logo.jpg',
                    ),
                    radius: 50.0,
                  ),
                ),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffec6397),
                  ),
                ),
              ],
            ),
            TextField(
              style: kSignTextFieldStyle,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              obscureText: true,
              style: kSignTextFieldStyle,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            StyledButton(
              text: 'Register',
              color: Color(0xff77228a),
              onPressed: () {
                // Navigator.pushNamed(context, RegisterScreen.route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
