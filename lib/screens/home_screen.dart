import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/conversation.dart';
import '../widgets/home.dart';

// Models
import 'package:my_chatting/models/message_tile_data.dart';

// constants
import 'package:my_chatting/constants.dart';

class HomeScreen extends StatefulWidget {
  static const route = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;
  final List<Map<String, Object>> _widgetList = [
    {
      'title': 'Home',
      'widget': Home(),
    },
    {
      'title': 'Conversation',
      'widget': Conversation(),
    },
  ];

  List<MessageTileData> messageBoxes = [
    MessageTileData(
      profile: '',
      username: 'Dianne Robertson',
      message: 'Hi, I am from NY, what about you?',
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
          selectedItemColor: kPinkColor,
        ));
  }
}
