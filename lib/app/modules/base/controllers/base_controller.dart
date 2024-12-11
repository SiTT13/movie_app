import 'package:get/get.dart';

class BaseController extends GetxController {
  //TODO: Implement BaseController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  var selectedIndex = 0.obs;

  // Function to update the selected tab
  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
