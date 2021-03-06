import 'package:flutter/material.dart';
import 'homepage.dart';
import 'history/history_page.dart';

// Mainscreen w/ BottomNavigationBar functionality to switch pages.
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          )
        ],
        onTap: (index) {
          if (this.mounted) {
            setState(() {
              _selectedIndex = index;
            });
          }
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
