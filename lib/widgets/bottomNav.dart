import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:report_app/pages/home_page.dart';

class BottomNavigations extends StatefulWidget {
  const BottomNavigations({super.key});

  @override
  State<BottomNavigations> createState() => _BottomNavigationsState();
}

class _BottomNavigationsState extends State<BottomNavigations> {
  int _index = 0;
  final tabs = [
    Center(
      child: HomePage(),
    ),
    Center(
      child: Text('Profile'),
    ),
    Center(
      child: Text('Report'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_index],
      //     bottomNavigationBar: ConvexAppBar(
      //   backgroundColor: Colors.white,
      //   color: Colors.black,
      //   items: [
      //     TabItem(
      //       icon: Icons.home,
      //     ),
      //     TabItem(
      //       icon: Icons.map,
      //     ),
      //     TabItem(
      //       icon: Icons.person,
      //     ),
      //   ],
      //   onTap: (int i) => print('click index=$i'),
      // )

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        iconSize: 30,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
