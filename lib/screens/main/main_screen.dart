import 'package:chat/screens/chats/chats_screen.dart';
import 'package:chat/screens/contact/contact_screen.dart';
import 'package:chat/screens/profile/profile_screen.dart';
import 'package:chat/screens/settings/settings_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'components/navbar_key.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int selectedIndex = 0;
  final screens = [ChatScreen(), ContactScreen(), ProfileScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedIndex,
        key: NavbarKey.getKey(),
        backgroundColor: const Color.fromARGB(200, 0, 157, 223),
        color: const Color.fromARGB(255, 0, 119, 167),
        items: const [
          Icon(
            Icons.message,
            color: Color.fromARGB(255, 123, 212, 246),
            size: 30,
          ),
          Icon(
            Icons.contact_phone,
            color: Color.fromARGB(255, 123, 212, 246),
            size: 30,
          ),
          Icon(
            Icons.fact_check,
            color: Color.fromARGB(255, 123, 212, 246),
            size: 30,
          ),
          Icon(
            Icons.settings,
            color: Color.fromARGB(255, 123, 212, 246),
            size: 30,
          ),
        ],
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        animationCurve: Curves.easeIn,
      ),
      body: screens[selectedIndex],
    );
  }
}
