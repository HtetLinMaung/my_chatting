import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  static const List<Map<String, Object>> bottomNavBarItems = [
    {
      'icon': Icons.home,
      'title': 'Home',
    },
    {
      'icon': Icons.chat_bubble_outline,
      'title': 'Conversations',
    },
  ];
  final int selectedIndex;
  final Function onItemTapped;
  final Color selectedItemColor;

  BottomNavBar({
    this.selectedIndex = 0,
    @required this.onItemTapped,
    @required this.selectedItemColor,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavBarItems.map((item) {
        return BottomNavigationBarItem(
          icon: Icon(
            item['icon'],
          ),
          title: Text(
            item['title'],
          ),
        );
      }).toList(),
      currentIndex: selectedIndex,
      selectedItemColor: selectedItemColor,
      unselectedItemColor: Color(0xff2c003e),
      onTap: onItemTapped,
    );
  }
}
