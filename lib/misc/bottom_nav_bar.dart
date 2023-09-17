import 'package:chetu_training/misc/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static final List<Widget> _widgetOptions = <Widget>[
    const Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    const Text(
      'Index 1: School',
      style: optionStyle,
    ),
    const Text(
      'Index 2: Business',
      style: optionStyle,
    ),
    const Text(
      'Index 1: School',
      style: optionStyle,
    ),
    const Text(
      'Index 2: Business',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(title: 'Bottom Navigation Bar',
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',),

          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
      child: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
