import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop/movie%20app/home_screen.dart';

class BottNaviScreen extends StatelessWidget {
  const BottNaviScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());
    return Scaffold(

      body: Obx(() => controller.screen[controller.selectedIndex.value]),

      bottomNavigationBar: Obx(
          () =>  NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            backgroundColor: Colors.white,
            indicatorColor: Colors.green.shade200,
            onDestinationSelected: (index){
              controller.selectedIndex.value = index;
            },
            destinations: [
              NavigationDestination(icon: Icon(CupertinoIcons.home,size: 30,), label: "Home"),
              NavigationDestination(icon: Icon(CupertinoIcons.heart,size: 30,), label: "shop"),
              NavigationDestination(icon: Icon(CupertinoIcons.cart,size: 30,), label: "heart"),
              NavigationDestination(icon: Icon(Icons.person_outline_outlined,size: 30,), label: "Profile"),
            ]
        ),
      ),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screen = [
    // HomeScreen(),
    Container(color: Colors.blue,),
    Container(color: Colors.purple,),
    Container(color: Colors.pink,),


  ];
}
