import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
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
    const Text('some other page'),
    const Text('some other page'),
    // const Text('coming soon'),
  ];

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavigationBarItems = [
      const BottomNavigationBarItem(
        icon: Icon(LucideIcons.barChart),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(LucideIcons.wallet),
        label: 'Spends',
      ),
      const BottomNavigationBarItem(
        icon: Icon(LucideIcons.coins),
        label: 'Invest',
      ),
      // const BottomNavigationBarItem(
      //   icon: Icon(LucideIcons.settings2),
      //   label: 'Settings',
      // ),
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
