import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pokkit/utils/constants.dart';
import 'package:pokkit/views/budget.dart';
import 'package:pokkit/views/home.dart';

class Init extends StatefulWidget {
  const Init({super.key});

  @override
  State<Init> createState() => _InitState();
}

class _InitState extends State<Init> {
  int _selectedIndex = 0;

  void onBottomNavItemPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> page = <Widget>[
    const Home(),
    const Text('spends page'),
    const Text('ai stuff here'),
    const Budget(),
    const Text('invest?'),
  ];

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavigationBarItems = [
      const BottomNavigationBarItem(
        icon: Icon(LucideIcons.heart, size: 20),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(LucideIcons.wallet, size: 20),
        label: 'Spends',
      ),
      BottomNavigationBarItem(
        icon: Container(
          transform: Matrix4.translationValues(0.0, 10.0, 0.0),
          child: Icon(LucideIcons.sparkles, color: Color(kPrimary), size: 28),
        ),
        label: '',
      ),
      const BottomNavigationBarItem(
        icon: Icon(LucideIcons.list, size: 20),
        label: 'Budget',
      ),
      const BottomNavigationBarItem(
        icon: Icon(LucideIcons.coins, size: 20),
        label: 'Invest',
      ),
    ];
    return Scaffold(
      body: Center(
        child: page.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.withOpacity(0.1)),
          ),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: bottomNavigationBarItems,
          currentIndex: _selectedIndex,
          onTap: onBottomNavItemPressed,
          type: BottomNavigationBarType.fixed,
          elevation: 5,
        ),
      ),
    );
  }
}
