// lib/controllers/category_controller.dart
import 'package:get/get.dart';

class CategoryController extends GetxController {
  // Movie List (can be dynamic)
  var movies = [
    {'title': 'Movie 1', 'genre': 'Action', 'imageUrl': 'https://via.placeholder.com/150', 'rating': 4.5},
    {'title': 'Movie 2', 'genre': 'Comedy', 'imageUrl': 'https://via.placeholder.com/150', 'rating': 4.0},
    {'title': 'Movie 3', 'genre': 'Drama', 'imageUrl': 'https://via.placeholder.com/150', 'rating': 3.8},
  ].obs;

  @override
  void onInit() {
    super.onInit();
  }
}
