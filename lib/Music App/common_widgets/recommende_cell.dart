

import 'package:flutter/cupertino.dart';
import 'package:online_shop/Music%20App/common_widgets/colors.dart';

class RecommendedCell extends StatelessWidget{

  final Map mObj;

  const RecommendedCell({super.key, required this.mObj});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 230,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          /// Image
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image.asset(
              mObj["image"],
              width: double.maxFinite,
              height: 125,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 15,),

          /// Song name
          Text(
            mObj["Sound of Sky"],
            maxLines: 1,
            style: TextStyle(
                color: AppColors.primaryText60,
                fontSize: 13,
                fontWeight: FontWeight.w700),
          ),

          /// artists name
          Text(
            mObj["Dilon Bruce"],
            maxLines: 1,
            style: TextStyle(
                color: AppColors.secondaryText,
                fontSize: 10,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }

}