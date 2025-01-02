import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/Music%20App/views/home/home_view.dart';

import '../../common_widgets/colors.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {


  List tabs = [
    HomeView(),
    HomeView(),
    HomeView(),
  ];


  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedIndex],

      bottomNavigationBar:  Container(
        height: 70,
        decoration: BoxDecoration(color: AppColors.bg, boxShadow: const [
        BoxShadow(
        color: Colors.black38,
        blurRadius: 5,
        offset: Offset(0, -3),
        )]),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: selectedIndex == 0
                ? Image.asset('assets/images/music_app/tab_home.png',width: 25,height: 25, )
                : Image.asset('assets/images/music_app/tab_home_un.png',width: 25,height: 25, ),
                label: "Home"
            ),

            BottomNavigationBarItem(icon: selectedIndex == 1
                ? Image.asset('assets/images/music_app/tab_songs.png',width: 25,height: 25,)
                : Image.asset('assets/images/music_app/tab_un_songs.png',width: 25,height: 25,),
                label: "List"

            ),

            BottomNavigationBarItem(icon: selectedIndex == 2
                ? Image.asset('assets/images/music_app/tab_setting.png',width: 25,height: 25,)
                : Image.asset('assets/images/music_app/tab_un_setting.png',width: 25,height: 25),
                label: "Setting"

            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.1,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },

        ),
      )



    );
  }
}

