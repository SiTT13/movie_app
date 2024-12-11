import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarouselController extends GetxController {
  var currentIndex = 0.obs;
}

class CarouselSliderWidget extends StatelessWidget {
  final List<String> imageUrls = [
    'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2021/02/spider-man-homecoming-movie-poster.jpg?q=50&fit=crop&w=1140&h=&dpr=1.5',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLsIfrRs00S7wQkh0zZ1aEIpzO5-CHKs4ukw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsPqUlLGbSEfip6yrii38KCofaewecoexlhw&s',
];

@override
Widget build(BuildContext context) {
    final CarouselController controller = Get.put(CarouselController());

    return Expanded(
    child: Column(
        children: [
        Container(
            height: 200,
            child: CarouselSlider.builder(
            itemCount: imageUrls.length,
            itemBuilder: (context, index, realIndex) {
                return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(imageUrls[index], fit: BoxFit.cover));
            },
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                controller.currentIndex.value = index;
                },
            ),
            ),
        ),
        SizedBox(height: 10,),
        Obx(
            () => DotsIndicator(
            dotsCount: imageUrls.length,
            position: controller.currentIndex.value.toDouble(),
            decorator: DotsDecorator(
                activeColor: Colors.blue,
                size: Size(8.0, 8.0),
                activeSize: Size(40.0, 10.0),
                spacing: EdgeInsets.all(4.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                )
            ),
            ),
        ),
        ],
    ),
    );
}
}
