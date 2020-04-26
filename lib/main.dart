import 'package:flutter/material.dart';

// Screens
import 'package:my_chatting/screens/home_screen.dart';
import 'package:my_chatting/screens/register_screen.dart';
import 'package:my_chatting/screens/welcome_screen.dart';

void main() => runApp(MyChatting());

class MyChatting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.route,
      routes: {
        HomeScreen.route: (context) => HomeScreen(),
        WelcomeScreen.route: (context) => WelcomeScreen(),
        RegisterScreen.route: (context) => RegisterScreen(),
      },
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xff6954be),
        scaffoldBackgroundColor: Color(0xfff8f8f8),
        textTheme: TextTheme(
          body1: TextStyle(
            color: Color(0xff2c003e),
          ),
        ),
      ),
    );
  }
}
