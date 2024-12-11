import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:movie_app/app/modules/download/views/download_view.dart';
import 'package:movie_app/app/modules/home/views/home_view.dart';

import '../../profile/views/profile_view.dart';
import '../../search/views/search_view.dart';
import '../controllers/base_controller.dart';

class BaseView extends GetView<BaseController> {
  // Pages list for the Bottom Navigation
  final List<Widget> _pages = [
    HomeView(),
    SearchView(),
    DownloadView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        // Update body dynamically based on the selected tab
        return _pages[controller.selectedIndex.value];
      }),
      bottomNavigationBar: Obx((){
        return  Container(
          color: Color.fromARGB(255, 4, 4, 55),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
            child: GNav(
              selectedIndex: controller.selectedIndex.value,
            onTabChange: (index) {
              controller.changeIndex(index); // Update selected index
            },
              gap: 8,
              backgroundColor: Color.fromARGB(255, 4, 4, 55),
              color: Colors.grey,
              activeColor: Color.fromARGB(255, 72, 217, 243),
              tabBackgroundColor: const Color.fromARGB(165, 85, 83, 83),
              padding: EdgeInsets.all(16),
              tabs: const[
              GButton(
                icon: Icons.home,
                text: 'HOME',
                ),
              GButton(
                icon: Icons.search,
                text: 'SEARCH',
                ),
              GButton(
                icon: Icons.download,
                text: 'DOWNLOAD',
                ),
              GButton(
                icon: Icons.person,
                text: 'PROFILE',
                ),
            ],
            ),
          ),
        );
      }
      )
    );
  }
}
