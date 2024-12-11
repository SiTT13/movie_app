import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:movie_app/app/modules/home/controllers/banner_controller.dart';
import 'package:movie_app/app/modules/home/views/widgets/banner_carousel.dart';
import 'package:movie_app/app/modules/home/views/widgets/category_view.dart';
import 'package:movie_app/app/modules/home/views/widgets/rec_u.dart';


import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8AxFVNwl4_TyHNvDpZCOpr3ZbOdxRTiQqqA&s',
    'https://mir-s3-cdn-cf.behance.net/project_modules/hd/d6782a115996885.60597a4dd75d2.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOYlxfIXqmR8LYEjRNiXl8iDWDCFa1w-J7nQ&s',
    'https://cdn.marvel.com/content/1x/sffh_london-high-res.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdzv03iwfFxjRjfNQEym64mtqxgeM6UNsF8A&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2ZMFDCeFWBVWDN9b3mIQ_ZpqHfv39bgIPHw&s',
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 4, 55),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello Smith',style: TextStyle(color: Colors.white),),
                Text('Let\'s stream your favorite movie',style: TextStyle(color: Colors.white,fontSize: 15),)
              ],
            ),
          ],
        ),
        
        leading: IconButton(
          onPressed: (){
            //todo
          },
          icon: Icon(Icons.person,size: 30,color: Colors.white,),
          ),
          actions: [
            LikeButton(
              size: 40,
            )
          ],
      ),
      body: ListView(
        children:  [
            Center(
              child: Container(
                margin: EdgeInsets.all(16.0),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(165, 85, 83, 83),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search,color: Colors.grey,),
                    const SizedBox(width: 8.0,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search a title',
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.filter_list,color: Colors.grey,),
                      onPressed: (){
                        //Handle filter icon tap
                      },
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1.0,),
            Column(
              children: [
                Container(
                  height: 230,
                  child: CarouselSliderWidget()),
              ],
            ),
            SizedBox(height: 1,),
            Container(
              alignment: Alignment.topLeft,
              child: Text('Recommend for you',style: TextStyle(color: Colors.white,fontSize: 17),)
              ),
              CustomWrap(imageUrls: imageUrls),
              SizedBox(height: 1,),
            Container(
              alignment: Alignment.topLeft,
              child: Text('Categories',style: TextStyle(color: Colors.white,fontSize: 17),)
              ),
              CategoryView(category: 'Action'),
              CategoryView(category: 'All'),
          ],
        ),
      );
  }
}
