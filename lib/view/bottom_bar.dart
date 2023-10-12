import 'package:flutter/material.dart';
import 'package:flutter_test_profile/constant/app_images.dart';
import 'package:flutter_test_profile/view/profile_page.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({super.key});

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedIndex = 3;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Search',
      style: optionStyle,
    ),
    Text(
      'Index 1: Save',
      style: optionStyle,
    ),
    Text(
      'Index 2: Share',
      style: optionStyle,
    ),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                AppImages.ic_search,
                height: 24,
                width: 24,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.ic_save,
              height: 24,
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.ic_bg3,
              height: 24,
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.profile_avatar,
              height: 24,
              width: 24,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
