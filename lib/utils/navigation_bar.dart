import 'package:camabel_s_community/screens/events_screen.dart';
import 'package:camabel_s_community/screens/home_screen.dart';
import 'package:camabel_s_community/screens/more_screen.dart';
import 'package:camabel_s_community/screens/photos_screen.dart';
import 'package:camabel_s_community/screens/spiritual_screen.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _screenOptions = <Widget>[
    HomeScreen(),
    EventsScreen(),
    PhotosScreen(),
    SpiritualScreen(),
    MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home)),
        ],
      ),
    );
  }
}
