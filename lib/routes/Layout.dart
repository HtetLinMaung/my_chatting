import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/conversation.dart';
import '../widgets/home.dart';

import '../models/message_box.dart';

const Color TAG_COLOR_PINK = const Color(0xfffe346e);

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedIndex = 1;
  static List<Map<String, Object>> _widgetList = [
    {
      'title': 'Home',
      'widget': Home(),
    },
    {
      'title': 'Conversation',
      'widget': Conversation(),
    },
  ];
  List<MessageBox> messageBoxes = [
    MessageBox(
      profile: '',
      username: 'Dianne Robertson',
      message: 'Hi,\nI am from NY, what about you?',
      unreadCounts: 5,
      lastActive: '5 min ago',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_widgetList[_selectedIndex]['title']),
          centerTitle: true,
        ),
        body: _widgetList[_selectedIndex]['widget'],
        bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
          selectedItemColor: TAG_COLOR_PINK,
        ));
  }
}
