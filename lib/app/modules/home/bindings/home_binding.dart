import 'package:get/get.dart';
import 'package:movie_app/app/modules/home/controllers/banner_controller.dart';
import 'package:movie_app/app/modules/home/views/widgets/banner_carousel.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
