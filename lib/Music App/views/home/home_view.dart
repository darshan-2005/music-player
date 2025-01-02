import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_shop/Music%20App/common_widgets/recommende_cell.dart';
import 'package:online_shop/Music%20App/view_model/home_view_model.dart';

import '../../common_widgets/colors.dart';
import '../../common_widgets/title_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final  homeVM = Get.put(HomeViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: AppColors.bg,
        elevation: 0,
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu,color: Colors.white,size: 30,)),
        title: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xff292E4B),
            borderRadius: BorderRadius.circular(19),
          ),
          height: 38,
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                  hintText: "Search album song",
                  hintStyle: TextStyle(
                    color: AppColors.primaryText28,
                    fontSize: 18,
                  ),
                prefixIcon: Icon(Icons.search,color: Colors.white,size: 25,)
              ),

            ),
          )
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TitleSection(title: "Hot Recommended"),

            SizedBox(
              height: 250,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: homeVM.hostRecommendedArr.length,
                  itemBuilder: (context,index) {

                    var mObj = homeVM.hostRecommendedArr[index];
                    return Container(
                      width: 230,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image.asset(
                              'assets/images/music_app/img_4.png',
                              width: double.maxFinite,
                              height: 125,
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(height: 15,),

                          Text('Sound of Sky',
                            maxLines: 1,
                            style: TextStyle(
                                color: AppColors.primaryText60,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),

                          Text('Dilon Bruce',
                            maxLines: 1,
                            style: TextStyle(
                                color: AppColors.secondaryText,
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    );;
                  }),
            )


          ],
        ),
      ),

    );


  }
}

