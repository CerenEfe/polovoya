import 'package:flutter/material.dart';
import 'package:polovoya/core/utils/colors/colors.dart';
import 'package:polovoya/feature/home/home_view.dart';
import 'package:polovoya/feature/message/message_view.dart';
import 'package:polovoya/feature/profile/profile_view.dart';
import 'package:polovoya/feature/search/search_view.dart';

class MainStreamView extends StatefulWidget {
  const MainStreamView({super.key});

  @override
  State<MainStreamView> createState() => _MainStreamViewState();
}

class _MainStreamViewState extends State<MainStreamView> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomeView(),
    SearchView(),
    MessageView(),
    ProfileView(),
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
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColors.pink_light,
        selectedItemColor: CustomColors.white,
        unselectedItemColor: CustomColors.text,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(size: 24),
        unselectedIconTheme: const IconThemeData(size: 24),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: 'Arama',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            activeIcon: Icon(Icons.message),
            label: 'Mesaj',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
