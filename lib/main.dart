import 'package:flutter/material.dart';

import './routes/Layout.dart';

void main() => runApp(MyChatting());

class MyChatting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Layout(),
      },
      theme: ThemeData.light().copyWith(
          primaryColor: Color(0xff6954be),
          accentColor: Color(0xff2c003e),
          scaffoldBackgroundColor: Color(0xfff8f8f8),
          textTheme: TextTheme(
            body1: TextStyle(
              color: Color(0xff2c003e),
            ),
          )),
    );
  }
}
