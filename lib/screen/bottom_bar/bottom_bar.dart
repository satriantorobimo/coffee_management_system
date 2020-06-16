import 'package:coffee_management_system/screen/home/home.dart';
import 'package:coffee_management_system/screen/profile/profile.dart';
import 'package:coffee_management_system/screen/transaction/transaction.dart';
import 'package:coffee_management_system/util/theme.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    TransactionScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
                title: Text('Home',
                    style: TextStyle(
                        fontSize: 10.0,
                        color: _currentIndex == 0
                            ? Style.themeData().hintColor
                            : Colors.grey)),
                icon: Icon(Icons.home),
                activeIcon: Icon(
                  Icons.home,
                  color: Style.themeData().hintColor,
                )),
            BottomNavigationBarItem(
                title: Text('Transaction',
                    style: TextStyle(
                        fontSize: 10.0,
                        color: _currentIndex == 1
                            ? Style.themeData().hintColor
                            : Colors.grey)),
                icon: Icon(Icons.shopping_cart),
                activeIcon: Icon(
                  Icons.shopping_cart,
                  color: Style.themeData().hintColor,
                )),
            BottomNavigationBarItem(
                title: Text('Profile',
                    style: TextStyle(
                        fontSize: 10.0,
                        color: _currentIndex == 2
                            ? Style.themeData().hintColor
                            : Colors.grey)),
                icon: Icon(Icons.person),
                activeIcon: Icon(
                  Icons.person,
                  color: Style.themeData().hintColor,
                )),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
