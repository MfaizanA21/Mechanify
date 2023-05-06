// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_controller.dart';
// import 'package:flutter/material.dart';
//
// class SlidingImages extends StatelessWidget {
//    SlidingImages({super.key});
//
//    int activeIndex = 0;
//    final aImages = [
//     'assets/images/res_home.png',
//     'assets/images/homefile.PNG',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Placeholder(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           CarouselSlider.builder(
//               itemCount: aImages.length,
//               itemBuilder: (context, index, realIndex){
//                 final urlImage = aImages[index];
//                 return buildImage(urlImage, index);
//           },
//               options: CarouselOptions(
//                   height:200,
//                 onPageChanged: (index,reason)=>
//                     // setState(()=>activeIndex= index)
//               )
//           ),
//           SizedBox(height: 12),
//           buildIndicator()
//         ],
//       ),
//     );
//   }
// }
//
// Widget buildImage(String urlImage, int index) =>
//     Container(
//       margin: const EdgeInsets.symmetric(horizontal: 5),
//       child: Image.asset(urlImage, fit: BoxFit.cover)
//     );
// Widget buildIndicator() =>AnimatedSmoothIndicator(
//   effect: ExpandingDotsEffect(
//     dotWidth: 15,
//     activeDotColor: Colors.teal.shade100
//   ),
//   activeIndex: activeIndex,
//   count: aImages.length,
// );
