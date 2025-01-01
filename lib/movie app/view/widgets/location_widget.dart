import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width*0.040),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Location',style: TextStyle(fontSize: width*0.040,color: Colors.grey , fontWeight: FontWeight.w700),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(CupertinoIcons.location_solid,color: dorange,),
                  SizedBox(width: height*0.005,),
                  Text('New York,USA',style: TextStyle(fontSize: width*0.045,color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(width: height*0.005,),

                ],
              )


            ],
          ),

          Container(
            width: width*0.120,
            height: height*0.050,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.shade100,
            ),
            child: Center(child: Icon(CupertinoIcons.bell,size: height*0.040,color: Colors.black,),),
          )
        ],
      ),
    );
  }
}
