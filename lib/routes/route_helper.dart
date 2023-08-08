import 'package:food_app_getx/pages/food/popular_food_detail.dart';
import 'package:food_app_getx/pages/food/recommended_food_detail.dart';
import 'package:food_app_getx/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";

  static String getInitial() => initial;
  static String getPopularFood() => popularFood;
  static String getRecommendedFood() => recommendedFood;

  static List<GetPage> routes = [
    GetPage(name: "/", page: () => const MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () {
          return const PopularFoodDetail();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          return const RecommenedFoodDetail();
        },
        transition: Transition.fadeIn),
  ];
}
