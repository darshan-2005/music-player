// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'colors.dart';
// import 'model/slid_image_model.dart';
// import 'views/widgets/location_widget.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     int currentIndex = 0;
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       backgroundColor: dblack,
//
//       body: SafeArea(
//           child:  SingleChildScrollView(
//             child: Column(
//               children: [
//
//                 /// Location And Notification Bar
//                 LocationWidget(width: width, height: height),
//                 SizedBox(height: height*0.020),
//
//
//                 /// Search Bar And Filer Box
//                 SearchWidget(),
//                 SizedBox(height: height*0.020),
//
//                 /// Slide Iteams  Bar And Filer Box
//
//                 Container(
//                   height: height*0.250,
//                   width: width,
//                   color: Colors.black.withOpacity(0.1),
//                   child: Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           width: width/1.1,
//                           height: height*0.200,
//                           decoration: BoxDecoration(
//                             color: Colors.black,
//                             borderRadius: BorderRadius.circular(40),
//                           ),
//                           child: PageView.builder(
//                               onPageChanged: (value) {
//                                 setState(() {
//                                   currentIndex = value;
//                                 });
//                               },
//                             itemCount: slidImage.length,
//                               itemBuilder: (context,index) {
//                                 return Image.asset(slidImage[index].image,fit: BoxFit.fill,
//                                   height: height*0.150,);
//                               } ),
//                         ),
//
//                         SizedBox(height: height*0.020),
//
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ...List.generate(
//                               slidImage.length,
//                                   (index) => AnimatedContainer(
//                                 duration: const Duration(milliseconds: 250),
//                                 height: height*0.005,
//                                 width: width*0.150,
//                                 margin:  EdgeInsets.only(right:width*0.020),
//                                 decoration: BoxDecoration(
//                                   color: currentIndex == index
//                                       ? Colors.white
//                                       : Colors.white.withOpacity(0.5),
//                                   borderRadius: BorderRadius.circular(width*0.050),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         )
//
//                       ],
//                     ),
//                   ),
//                 )
//
//
//
//               ],
//             ),
//           )
//       ),
//
//     );
//   }
// }
//
// class SearchWidget extends StatelessWidget {
//   const SearchWidget({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Row(
//         children: [
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.only(left: 10),
//               height: 60,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Row(
//                 children: [
//                   Icon(Icons.search),
//                   const SizedBox(width: 8),
//
//                   /// Input field
//                   Expanded(
//                     child: TextField(
//                       style: const TextStyle(
//                         fontSize: 18,
//                         color: Colors.black,
//                       ),
//                       decoration: InputDecoration(
//                         contentPadding: const EdgeInsets.all(0),
//                         isDense: true,
//                         border: InputBorder.none,
//                         hintText: "Search ",
//                         hintStyle: TextStyle(
//                           fontSize: 18,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(width: 15),
//           Container(
//             height: 60,
//             width: 55,
//             decoration: BoxDecoration(
//               color: Colors.black,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             alignment: Alignment.center,
//             child: const Icon(
//               Icons.tune,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
