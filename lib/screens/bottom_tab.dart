import 'package:flutter/material.dart';
import './profile_screen.dart';
import './home_screen.dart';
import './cart_screen.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _selectedPageIndex = 0;
  final List<Map<String, Object>> _tabs = [
    {
      'tab': const HomeScreen(),
      'icon': const Icon(Icons.home_outlined),
      'active_icon': const Icon(Icons.home),
      'title': 'Home',
    },
    {
      'tab': const CartScreen(),
      'icon': const Icon(Icons.shopping_cart_outlined),
      'active_icon': const Icon(Icons.shopping_cart),
      'title': 'Cart',
    },
    {
      'tab': const ProfileScreen(),
      'icon': const Icon(Icons.person_outlined),
      'active_icon': const Icon(Icons.person),
      'title': 'Profile',
    },
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedPageIndex]['tab'],
      bottomNavigationBar: BottomNavigationBar(
        items: _tabs.map((itr) {
          return BottomNavigationBarItem(
            icon: itr['icon'],
            activeIcon: itr['active_icon'],
            label: itr['title'],
          );
        }).toList(),
        onTap: _selectPage,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
      ),
    );
  }
}
