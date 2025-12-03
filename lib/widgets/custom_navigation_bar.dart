import 'package:camabel_s_community/screens/events_screen.dart';
import 'package:camabel_s_community/screens/home_screen.dart';
import 'package:camabel_s_community/screens/more_screen.dart';
import 'package:camabel_s_community/screens/photos_screen.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _screenOptions = <Widget>[
    HomeScreen(),
    EventsScreen(),
    PhotosScreen(),
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
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onItemTapped,
        selectedIndex: _selectedIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.event_outlined),
            selectedIcon: Icon(Icons.event),
            label: "Events",
          ),
          NavigationDestination(
            icon: Icon(Icons.photo_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Photos",
          ),
          NavigationDestination(
            icon: Icon(Icons.more),
            selectedIcon: Icon(Icons.home),
            label: "More",
          ),
        ],
      ),
      body: _screenOptions[_selectedIndex],
    );
  }
}
