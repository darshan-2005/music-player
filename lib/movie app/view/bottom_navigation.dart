import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/movie%20app/home_screen.dart';

import 'home/home_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int selectedIndex = 0;
  List<Widget> pages =[
    HomeScreen(),
    // SearchScreen(),
    // LibraryScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
          color: const Color(0xFF0D0D0D),
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.transparent.withOpacity(0.9),
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.library_music_rounded),label: 'Library'),



      ]),
    );
  }
}
